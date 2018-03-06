## testflow test

[Digdag:728](https://github.com/treasure-data/digdag/issues/728)

* `run>`タスク内で、tset.shを実行します。
  * test.shは/tmp/exceedというファイルの存在を確認し、ファイルがあれば成功(exit 0)、なければ失敗(exit 1)になります。
  * 失敗時は、/tmp/executedを作成します。
  * 2回目以降にスクリプトを実行すると、/tmp/executedがあるため成功します。

## リトライ時の動作

* 期待した動作
  * 1回目の`run`は失敗しますが、2回目の実行で成功するので最終的に**成功**となると期待。
* 実際の動作
  * シェルスクリプトは成功しているが、タスクの実行結果は**失敗**となる。

```yaml
timezone: Asia/Tokyo

_error:
  echo>: Workflow failed.

+retrytask:
  _retry: 5

  +run:
    sh>: ./test.sh # 1回目の実行は失敗し、2回目で成功するスクリプト

+teardown:
  echo>: Workflow succeeded.
```

test.sh

```bash
#!/usr/bin/env bash

if [ -e /tmp/executed ]; then
    echo "Success."
    exit 0
else
    echo "Failed." > /tmp/executed
    exit 1
fi
```




1st try

```
2018-03-06 14:09:12 +0900: Digdag v0.9.24
2018-03-06 14:09:14 +0900 [WARN] (main): Using a new session time 2018-03-06T00:00:00+09:00.
2018-03-06 14:09:14 +0900 [INFO] (main): Using session /path/to/digdag-support/core_728_sh_operator_retry/.digdag/status/20180306T000000+0900.
2018-03-06 14:09:14 +0900 [INFO] (main): Starting a new session project id=1 workflow name=testflow session_time=2018-03-06T00:00:00+09:00
2018-03-06 14:09:15 +0900 [INFO] (0017@[0:default]+testflow+retrytask+run): sh>: ./test.sh
2018-03-06 14:09:15 +0900 [ERROR] (0017@[0:default]+testflow+retrytask+run): Task failed with unexpected error: Command failed with code 1
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
2018-03-06 14:09:16 +0900 [INFO] (0017@[0:default]+testflow+retrytask+run): sh>: ./test.sh
Success.
2018-03-06 14:09:16 +0900 [INFO] (0017@[0:default]+testflow+retrytask+run): sh>: ./test.sh
Success.
2018-03-06 14:09:17 +0900 [INFO] (0017@[0:default]+testflow+retrytask+run): sh>: ./test.sh
Success.
2018-03-06 14:09:17 +0900 [INFO] (0017@[0:default]+testflow+retrytask+run): sh>: ./test.sh
Success.
2018-03-06 14:09:17 +0900 [INFO] (0017@[0:default]+testflow+retrytask+run): sh>: ./test.sh
Success.
2018-03-06 14:09:18 +0900 [INFO] (0017@[0:default]+testflow^failure-alert): type: notify
2018-03-06 14:09:18 +0900 [INFO] (0021@[0:default]+testflow^error): echo>: Workflow failed.
Workflow failed.
error:
  * +testflow+retrytask+run:
    Command failed with code 1 (runtime)

Task state is saved at /path/to/digdag-support/core_728_sh_operator_retry/.digdag/status/20180306T000000+0900 directory.
  * Use --session <daily | hourly | "yyyy-MM-dd[ HH:mm:ss]"> to not reuse the last session time.
  * Use --rerun, --start +NAME, or --goal +NAME argument to rerun skipped tasks.
```

2nd try.


```
2018-03-06 14:10:06 +0900: Digdag v0.9.24
2018-03-06 14:10:08 +0900 [WARN] (main): Using a new session time 2018-03-06T00:00:00+09:00.
2018-03-06 14:10:08 +0900 [INFO] (main): Using session /path/to/digdag-support/core_728_sh_operator_retry/.digdag/status/20180306T000000+0900.
2018-03-06 14:10:08 +0900 [INFO] (main): Starting a new session project id=1 workflow name=testflow session_time=2018-03-06T00:00:00+09:00
2018-03-06 14:10:09 +0900 [INFO] (0017@[0:default]+testflow+retrytask+run): sh>: ./test.sh
Success.
2018-03-06 14:10:09 +0900 [INFO] (0017@[0:default]+testflow+teardown): echo>: Workflow succeeded.
Workflow succeeded.
Success. Task state is saved at /path/to/digdag-support/core_728_sh_operator_retry/.digdag/status/20180306T000000+0900 directory.
  * Use --session <daily | hourly | "yyyy-MM-dd[ HH:mm:ss]"> to not reuse the last session time.
  * Use --rerun, --start +NAME, or --goal +NAME argument to rerun skipped tasks.
```
