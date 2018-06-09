```
digdag server -m -c digdag.conf
```

```
digdag push hoge
digdag start hoge echo --session now
```

```
cat /tmp/aaa.txt
/path/to/digdag-support/core_669_error_namehsato-mbp13
```

```json
{
  "timestamp": "2018-05-31T13:07:26Z",
  "message": "Workflow session attempt failed",
  "site_id": 0,
  "project_id": 1,
  "project_name": "hoge",
  "workflow_name": "echo",
  "revision": "fcaaeb96-d6a9-4e04-b408-bea1aa5af43d",
  "attempt_id": 1,
  "session_id": 1,
  "task_name": "+echo^failure-alert",
  "timezone": "UTC",
  "session_uuid": "a00392a1-f239-45db-a5bb-23c4076463c3",
  "session_time": "2018-05-31T13:07:23+00:00"
}
```


```
hsato-mbp13:core_669_error_name hsato$ digdag server -m -c digdag.conf -O /tmp/digdag
2018-06-09 14:44:08 +0900: Digdag v0.9.25
2018-06-09 14:44:10 +0900 [INFO] (main): secret encryption engine: disabled
2018-06-09 14:44:10 +0900 [INFO] (main): XNIO version 3.3.6.Final
2018-06-09 14:44:10 +0900 [INFO] (main): XNIO NIO Implementation Version 3.3.6.Final
2018-06-09 14:44:10 +0900 [INFO] (main): Starting server on 127.0.0.1:65432
2018-06-09 14:44:10 +0900 [INFO] (main): Bound on 127.0.0.1:65432 (api)
2018-06-09 14:44:23 +0900 [INFO] (XNIO-1 task-7): Starting a new session project id=1 workflow name=echo session_time=2018-06-09T05:44:22+00:00
2018-06-09 14:44:24 +0900 [INFO] (0032@[0:hoge]+echo+a): sh>: ech hoge
/bin/sh: line 1: ech: command not found
2018-06-09 14:44:24 +0900 [ERROR] (0032@[0:hoge]+echo+a): Task failed with unexpected error: Command failed with code 127
java.lang.RuntimeException: Command failed with code 127
	at io.digdag.standards.operator.ShOperatorFactory$ShOperator.runTask(ShOperatorFactory.java:143)
	at io.digdag.util.BaseOperator.run(BaseOperator.java:35)
	at io.digdag.core.agent.OperatorManager.callExecutor(OperatorManager.java:312)
	at io.digdag.core.agent.OperatorManager.runWithWorkspace(OperatorManager.java:254)
	at io.digdag.core.agent.OperatorManager.lambda$runWithHeartbeat$2(OperatorManager.java:137)
	at io.digdag.core.agent.ExtractArchiveWorkspaceManager.withExtractedArchive(ExtractArchiveWorkspaceManager.java:77)
	at io.digdag.core.agent.OperatorManager.runWithHeartbeat(OperatorManager.java:135)
	at io.digdag.core.agent.OperatorManager.run(OperatorManager.java:119)
	at io.digdag.core.agent.MultiThreadAgent.lambda$null$0(MultiThreadAgent.java:127)
	at java.util.concurrent.Executors$RunnableAdapter.call(Executors.java:511)
	at java.util.concurrent.FutureTask.run(FutureTask.java:266)
	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1142)
	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:617)
	at java.lang.Thread.run(Thread.java:745)
2018-06-09 14:44:24 +0900 [INFO] (0032@[0:hoge]+echo^failure-alert): type: notify
```

## Memo


```
2018-06-09 17:16:37 +0900 [INFO] (0032@[0:hoge]+echo^failure-alert): type: notify
2018-06-09 17:16:37 +0900 [ERROR] (0032@[0:hoge]+echo^failure-alert): Task failed with unexpected error: Not in transaction
java.lang.IllegalStateException: Not in transaction
	at io.digdag.core.database.ThreadLocalTransactionManager.getHandle(ThreadLocalTransactionManager.java:212)
	at io.digdag.core.database.BasicDatabaseStoreManager.autoCommit(BasicDatabaseStoreManager.java:208)
	at io.digdag.core.database.BasicDatabaseStoreManager.requiredResource(BasicDatabaseStoreManager.java:59)
	at io.digdag.core.database.DatabaseSessionStoreManager$DatabaseSessionStore.getAttemptById(DatabaseSessionStoreManager.java:1231)
	at io.digdag.standards.operator.NotifyOperatorFactory$NotifyOperator.run(NotifyOperatorFactory.java:70)
	at io.digdag.core.agent.OperatorManager.callExecutor(OperatorManager.java:312)
	at io.digdag.core.agent.OperatorManager.runWithWorkspace(OperatorManager.java:254)
	at io.digdag.core.agent.OperatorManager.lambda$runWithHeartbeat$2(OperatorManager.java:137)
	at io.digdag.core.agent.ExtractArchiveWorkspaceManager.withExtractedArchive(ExtractArchiveWorkspaceManager.java:77)
	at io.digdag.core.agent.OperatorManager.runWithHeartbeat(OperatorManager.java:135)
	at io.digdag.core.agent.OperatorManager.run(OperatorManager.java:119)
	at io.digdag.core.agent.MultiThreadAgent.lambda$null$0(MultiThreadAgent.java:127)
	at java.util.concurrent.Executors$RunnableAdapter.call(Executors.java:511)
	at java.util.concurrent.FutureTask.run(FutureTask.java:266)
	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1142)
	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:617)
	at java.lang.Thread.run(Thread.java:745)
```

```diff
diff --git a/digdag-standards/src/main/java/io/digdag/standards/operator/NotifyOperatorFactory.java b/digdag-standards/src/main/java/io/digdag/standards/operator/NotifyOperatorFactory.java
index 5b14d8a1f..3eebf7372 100644
--- a/digdag-standards/src/main/java/io/digdag/standards/operator/NotifyOperatorFactory.java
+++ b/digdag-standards/src/main/java/io/digdag/standards/operator/NotifyOperatorFactory.java
@@ -3,6 +3,9 @@ package io.digdag.standards.operator;
 import com.google.inject.Inject;
 import io.digdag.client.config.Config;
 import io.digdag.client.config.ConfigElement;
+import io.digdag.core.repository.ResourceNotFoundException;
+import io.digdag.core.session.SessionStoreManager;
+import io.digdag.core.session.StoredSessionAttemptWithSession;
 import io.digdag.spi.Notification;
 import io.digdag.spi.NotificationException;
 import io.digdag.spi.Notifier;
@@ -21,11 +24,13 @@ public class NotifyOperatorFactory
         implements OperatorFactory
 {
     private final Notifier notifier;
+    private final SessionStoreManager sm;
 
     @Inject
-    public NotifyOperatorFactory(Notifier notifier)
+    public NotifyOperatorFactory(Notifier notifier,SessionStoreManager sm)
     {
         this.notifier = notifier;
+        this.sm = sm;
     }
 
     public String getType()
@@ -36,7 +41,7 @@ public class NotifyOperatorFactory
     @Override
     public Operator newOperator(OperatorContext context)
     {
-        return new NotifyOperator(context, notifier);
+        return new NotifyOperator(context, notifier,sm);
     }
 
     private static class NotifyOperator
@@ -44,11 +49,13 @@ public class NotifyOperatorFactory
     {
         private final TaskRequest request;
         private final Notifier notifier;
+        private final SessionStoreManager sm;
 
-        public NotifyOperator(OperatorContext context, Notifier notifier)
+        public NotifyOperator(OperatorContext context, Notifier notifier, SessionStoreManager sm)
         {
             this.request = context.getTaskRequest();
             this.notifier = notifier;
+            this.sm = sm;
         }
 
         @Override
@@ -58,6 +65,15 @@ public class NotifyOperatorFactory
 
             String message = params.get("_command", String.class);
 
+            try {
+                StoredSessionAttemptWithSession attempt =
+                sm.getSessionStore(request.getSiteId()).getAttemptById(request.getAttemptId());
+                System.out.println(attempt);
+            }
+            catch (ResourceNotFoundException e) {
+                e.printStackTrace();
+            }
+
             Notification notification = Notification.builder(Instant.now(), message)
                     .siteId(request.getSiteId())
                     .projectName(request.getProjectName())
```
