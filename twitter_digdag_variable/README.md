## Reference

* [Twitter](https://twitter.com/kazukgw/status/925018998307045378)
* [Gist](https://gist.github.com/kazukgw/37b59ec0dc3fdafae2608a8fbf639766)

## Result(Python2)

* Python 2.7.13
* Digdag 0.9.20

```
2017-10-31 09:27:36 +0900: Digdag v0.9.20
2017-10-31 09:27:38 +0900 [WARN] (main): Reusing the last session time 2017-10-31T00:00:00+00:00.
2017-10-31 09:27:38 +0900 [INFO] (main): Using session /Users/user/OpenProjects/digdag/digdag-support/twitter_digdag_variable/.digdag/status/20171031T000000+0000.
2017-10-31 09:27:38 +0900 [INFO] (main): Starting a new session project id=1 workflow name=sample session_time=2017-10-31T00:00:00+00:00
2017-10-31 09:27:39 +0900 [INFO] (0017@[0:default]+sample+run_python): py>: hoge.Hoge.hoge
{u'fuga': u"${moment(session_date).format('YYYYMMDD')}"}
Success. Task state is saved at /Users/user/OpenProjects/digdag/digdag-support/twitter_digdag_variable/.digdag/status/20171031T000000+0000 directory.
  * Use --session <daily | hourly | "yyyy-MM-dd[ HH:mm:ss]"> to not reuse the last session time.
  * Use --rerun, --start +NAME, or --goal +NAME argument to rerun skipped tasks.
```

## Result(Python3)

* Python 3.6.0
* Digdag 0.9.20

```
2017-10-31 09:29:06 +0900: Digdag v0.9.20
2017-10-31 09:29:08 +0900 [WARN] (main): Reusing the last session time 2017-10-31T00:00:00+00:00.
2017-10-31 09:29:08 +0900 [INFO] (main): Using session /Users/user/OpenProjects/digdag/digdag-support/twitter_digdag_variable/.digdag/status/20171031T000000+0000.
2017-10-31 09:29:08 +0900 [INFO] (main): Starting a new session project id=1 workflow name=sample session_time=2017-10-31T00:00:00+00:00
2017-10-31 09:29:10 +0900 [INFO] (0017@[0:default]+sample+run_python): py>: hoge.Hoge.hoge
Traceback (most recent call last):
  File "<stdin>", line 136, in <module>
  File "<stdin>", line 85, in digdag_inspect_command
  File "/Users/user/OpenProjects/digdag/digdag-support/twitter_digdag_variable/hoge.py", line 4
    print digdag.env.params['hoge']
               ^
SyntaxError: Missing parentheses in call to 'print'
2017-10-31 09:29:10 +0900 [ERROR] (0017@[0:default]+sample+run_python): Task failed with unexpected error: Python command failed with code 1
java.lang.RuntimeException: Python command failed with code 1
	at io.digdag.standards.operator.PyOperatorFactory$PyOperator.runCode(PyOperatorFactory.java:153)
	at io.digdag.standards.operator.PyOperatorFactory$PyOperator.runTask(PyOperatorFactory.java:91)
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
2017-10-31 09:29:10 +0900 [INFO] (0017@[0:default]+sample^failure-alert): type: notify
error:
  * +sample+run_python:
    Python command failed with code 1 (runtime)

Task state is saved at /Users/user/OpenProjects/digdag/digdag-support/twitter_digdag_variable/.digdag/status/20171031T000000+0000 directory.
  * Use --session <daily | hourly | "yyyy-MM-dd[ HH:mm:ss]"> to not reuse the last session time.
  * Use --rerun, --start +NAME, or --goal +NAME argument to rerun skipped tasks.
```

