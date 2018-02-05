## testflow test

1st try

```
2018-02-05 14:22:18 +0900: Digdag v0.9.24
2018-02-05 14:22:19 +0900 [WARN] (main): Using a new session time 2018-02-05T00:00:00+09:00.
2018-02-05 14:22:19 +0900 [INFO] (main): Using session /path/to/digdag-support/core_728_sh_operator_retry/.digdag/status/20180205T000000+0900.
2018-02-05 14:22:19 +0900 [INFO] (main): Starting a new session project id=1 workflow name=testflow session_time=2018-02-05T00:00:00+09:00
2018-02-05 14:22:20 +0900 [INFO] (0017@[0:default]+testflow+retrytask+run): sh>: ./test.sh
2018-02-05 14:22:20 +0900 [ERROR] (0017@[0:default]+testflow+retrytask+run): Task failed with unexpected error: Command failed with code 1
java.lang.RuntimeException: Command failed with code 1
	at io.digdag.standards.operator.ShOperatorFactory$ShOperator.runTask(ShOperatorFactory.java:143)
	at io.digdag.util.BaseOperator.run(BaseOperator.java:35)
	at io.digdag.core.agent.OperatorManager.callExecutor(OperatorManager.java:312)
	at io.digdag.cli.Run$OperatorManagerWithSkip.callExecutor(Run.java:694)
	at io.digdag.core.agent.OperatorManager.runWithWorkspace(OperatorManager.java:254)
	at io.digdag.core.agent.OperatorManager.lambda$runWithHeartbeat$2(OperatorManager.java:137)
	at io.digdag.core.agent.LocalWorkspaceManager.withExtractedArchive(LocalWorkspaceManager.java:25)
	at io.digdag.core.agent.OperatorManager.runWithHeartbeat(OperatorManager.java:135)
	at io.digdag.core.agent.OperatorManager.run(OperatorManager.java:119)
	at io.digdag.cli.Run$OperatorManagerWithSkip.run(Run.java:676)
	at io.digdag.core.agent.MultiThreadAgent.lambda$null$0(MultiThreadAgent.java:127)
	at java.util.concurrent.Executors$RunnableAdapter.call(Executors.java:511)
	at java.util.concurrent.FutureTask.run(FutureTask.java:266)
	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1142)
	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:617)
	at java.lang.Thread.run(Thread.java:745)
2018-02-05 14:22:21 +0900 [INFO] (0017@[0:default]+testflow+retrytask+run): sh>: ./test.sh
Success.
2018-02-05 14:22:21 +0900 [INFO] (0017@[0:default]+testflow+retrytask+run): sh>: ./test.sh
Success.
2018-02-05 14:22:21 +0900 [WARN] (0017@[0:default]+testflow+retrytask+run): Skipped
2018-02-05 14:22:21 +0900 [WARN] (0017@[0:default]+testflow+retrytask+run): Skipped
2018-02-05 14:22:22 +0900 [WARN] (0017@[0:default]+testflow+retrytask+run): Skipped
2018-02-05 14:22:22 +0900 [INFO] (0017@[0:default]+testflow^failure-alert): type: notify
2018-02-05 14:22:22 +0900 [INFO] (0021@[0:default]+testflow^error): echo>: Workflow failed.
Workflow failed.
error:
  * +testflow+retrytask+run:
    Command failed with code 1 (runtime)

Task state is saved at /path/to/digdag-support/core_728_sh_operator_retry/.digdag/status/20180205T000000+0900 directory.
  * Use --session <daily | hourly | "yyyy-MM-dd[ HH:mm:ss]"> to not reuse the last session time.
  * Use --rerun, --start +NAME, or --goal +NAME argument to rerun skipped tasks.
```

2nd try.


```
2018-02-05 14:23:14 +0900: Digdag v0.9.24
2018-02-05 14:23:16 +0900 [WARN] (main): Reusing the last session time 2018-02-05T00:00:00+09:00.
2018-02-05 14:23:16 +0900 [INFO] (main): Using session /path/to/digdag-support/core_728_sh_operator_retry/.digdag/status/20180205T000000+0900.
2018-02-05 14:23:16 +0900 [INFO] (main): Starting a new session project id=1 workflow name=testflow session_time=2018-02-05T00:00:00+09:00
2018-02-05 14:23:16 +0900 [WARN] (0017@[0:default]+testflow+retrytask+run): Skipped
2018-02-05 14:23:17 +0900 [INFO] (0017@[0:default]+testflow+teardown): echo>: Workflow succeeded.
Workflow succeeded.
Success. Task state is saved at /path/to/digdag-support/core_728_sh_operator_retry/.digdag/status/20180205T000000+0900 directory.
  * Use --session <daily | hourly | "yyyy-MM-dd[ HH:mm:ss]"> to not reuse the last session time.
  * Use --rerun, --start +NAME, or --goal +NAME argument to rerun skipped tasks.
```
