
Digdag 0.10.2 fixed this issue.
[Release note](http://docs.digdag.io/releases/release-0.10.2.html) 

https://github.com/treasure-data/digdag/issues/1613

### Prepare Server

```
digdag server -c digdag.conf
```

### Prepare client

```
cd test_project
digdag push test_project
digdag secrets --project test_project --set MY_SECRET=12345
digdag start test_project test --session now
```

```
2021-07-20 19:06:31 +0900 [INFO] (main): secret encryption engine: aesgcm
2021-07-20 19:06:31 +0900 [INFO] (main): Applying database migration:20151204221156
2021-07-20 19:06:32 +0900 [INFO] (main): Applying database migration:20160602123456
2021-07-20 19:06:32 +0900 [INFO] (main): Applying database migration:20160602184025
2021-07-20 19:06:32 +0900 [INFO] (main): Applying database migration:20160610154832
2021-07-20 19:06:32 +0900 [INFO] (main): Applying database migration:20160623123456
2021-07-20 19:06:32 +0900 [INFO] (main): Applying database migration:20160719172538
2021-07-20 19:06:32 +0900 [INFO] (main): Applying database migration:20160817123456
2021-07-20 19:06:32 +0900 [INFO] (main): Applying database migration:20160818043815
2021-07-20 19:06:32 +0900 [INFO] (main): Applying database migration:20160818220026
2021-07-20 19:06:32 +0900 [INFO] (main): Applying database migration:20160908175551
2021-07-20 19:06:32 +0900 [INFO] (main): Applying database migration:20160926123456
2021-07-20 19:06:32 +0900 [INFO] (main): Applying database migration:20160928203753
2021-07-20 19:06:32 +0900 [INFO] (main): Applying database migration:20161005225356
2021-07-20 19:06:32 +0900 [INFO] (main): Applying database migration:20161028112233
2021-07-20 19:06:32 +0900 [INFO] (main): Applying database migration:20161110112233
2021-07-20 19:06:32 +0900 [INFO] (main): Applying database migration:20161209001857
2021-07-20 19:06:32 +0900 [INFO] (main): Applying database migration:20170116082921
2021-07-20 19:06:32 +0900 [INFO] (main): Applying database migration:20170116090744
2021-07-20 19:06:32 +0900 [INFO] (main): Applying database migration:20170223220127
2021-07-20 19:06:32 +0900 [INFO] (main): Applying database migration:20190318175338
2021-07-20 19:06:32 +0900 [INFO] (main): Applying database migration:20191105105927
2021-07-20 19:06:32 +0900 [INFO] (main): Applying database migration:20200716114008
2021-07-20 19:06:32 +0900 [INFO] (main): Applying database migration:20200803184355
2021-07-20 19:06:32 +0900 [INFO] (main): 23 migrations applied.
2021-07-20 19:06:32 +0900 [INFO] (main): XNIO version 3.3.8.Final
2021-07-20 19:06:32 +0900 [INFO] (main): XNIO NIO Implementation Version 3.3.8.Final
2021-07-20 19:06:32 +0900 [INFO] (main): Starting server on 127.0.0.1:65432
2021-07-20 19:06:32 +0900 [INFO] (main): Bound on 127.0.0.1:65432 (api)
2021-07-20 19:10:18 +0900 [INFO] (XNIO-1 task-12): Starting a new session project id=1 workflow name=test session_time=2021-07-20T10:10:18+00:00
2021-07-20 19:10:20 +0900 [INFO] (0179@[0:test_project]+test+my_test): for_each>: {schema=[{file=MY-FILE}]}
2021-07-20 19:10:22 +0900 [INFO] (0179@[0:test_project]+test+my_test^sub+for-0=schema=0=%7B%22file%22%3A): py>: test_module.test_print
2021-07-20 19:10:23 +0900 [ERROR] (0179@[0:test_project]+test+my_test^sub+for-0=schema=0=%7B%22file%22%3A): Task failed with unexpected error: java.nio.ByteBuffer.limit(I)Ljava/nio/ByteBuffer;
java.lang.NoSuchMethodError: java.nio.ByteBuffer.limit(I)Ljava/nio/ByteBuffer;
	at io.digdag.core.database.AESGCMSecretCrypto.decryptSecret(AESGCMSecretCrypto.java:173)
	at io.digdag.core.database.DatabaseSecretStore.getSecret(DatabaseSecretStore.java:49)
	at io.digdag.core.agent.GrantedPrivilegedVariables.lambda$privilegedSecretProvider$0(GrantedPrivilegedVariables.java:25)
	at io.digdag.spi.SecretProvider.getSecret(SecretProvider.java:20)
	at io.digdag.util.UserSecretTemplate.lambda$format$0(UserSecretTemplate.java:55)
	at io.digdag.util.UserSecretTemplate.replaceAll(UserSecretTemplate.java:65)
	at io.digdag.util.UserSecretTemplate.format(UserSecretTemplate.java:55)
	at io.digdag.core.agent.GrantedPrivilegedVariables.lambda$buildAccessor$1(GrantedPrivilegedVariables.java:62)
	at io.digdag.core.agent.GrantedPrivilegedVariables.get(GrantedPrivilegedVariables.java:81)
	at io.digdag.util.CommandOperators.collectEnvironmentVariables(CommandOperators.java:18)
	at io.digdag.standards.operator.PyOperatorFactory$PyOperator.runCommand(PyOperatorFactory.java:296)
	at io.digdag.standards.operator.PyOperatorFactory$PyOperator.runCode(PyOperatorFactory.java:159)
	at io.digdag.standards.operator.PyOperatorFactory$PyOperator.runTask(PyOperatorFactory.java:115)
	at io.digdag.util.BaseOperator.run(BaseOperator.java:35)
	at io.digdag.core.agent.OperatorManager.callExecutor(OperatorManager.java:365)
	at io.digdag.server.metrics.DigdagTimedMethodInterceptor.invokeMain(DigdagTimedMethodInterceptor.java:58)
	at io.digdag.server.metrics.DigdagTimedMethodInterceptor.invoke(DigdagTimedMethodInterceptor.java:31)
	at io.digdag.core.agent.OperatorManager.runWithWorkspace(OperatorManager.java:298)
	at io.digdag.server.metrics.DigdagTimedMethodInterceptor.invokeMain(DigdagTimedMethodInterceptor.java:58)
	at io.digdag.server.metrics.DigdagTimedMethodInterceptor.invoke(DigdagTimedMethodInterceptor.java:31)
	at io.digdag.core.agent.OperatorManager.lambda$runWithHeartbeat$2(OperatorManager.java:151)
	at io.digdag.core.agent.ExtractArchiveWorkspaceManager.withExtractedArchive(ExtractArchiveWorkspaceManager.java:77)
	at io.digdag.core.agent.OperatorManager.runWithHeartbeat(OperatorManager.java:149)
	at io.digdag.server.metrics.DigdagTimedMethodInterceptor.invokeMain(DigdagTimedMethodInterceptor.java:58)
	at io.digdag.server.metrics.DigdagTimedMethodInterceptor.invoke(DigdagTimedMethodInterceptor.java:31)
	at io.digdag.core.agent.OperatorManager.run(OperatorManager.java:132)
	at io.digdag.server.metrics.DigdagTimedMethodInterceptor.invokeMain(DigdagTimedMethodInterceptor.java:58)
	at io.digdag.server.metrics.DigdagTimedMethodInterceptor.invoke(DigdagTimedMethodInterceptor.java:31)
	at io.digdag.core.agent.MultiThreadAgent.lambda$run$0(MultiThreadAgent.java:132)
	at java.util.concurrent.Executors$RunnableAdapter.call(Executors.java:511)
	at java.util.concurrent.FutureTask.run(FutureTask.java:266)
	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1149)
	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:624)
	at java.lang.Thread.run(Thread.java:748)
```
