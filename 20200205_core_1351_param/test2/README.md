## client setting 

locate this file to /tmp/fuga


## with path_prefix

```
% export path_prefix=/tmp/fuga/csv/sample
% digdag server -m
2020-02-05 18:57:37 +0900: Digdag v0.9.41
2020-02-05 18:57:38 +0900 [INFO] (main): secret encryption engine: disabled
2020-02-05 18:57:39 +0900 [INFO] (main): XNIO version 3.3.6.Final
2020-02-05 18:57:39 +0900 [INFO] (main): XNIO NIO Implementation Version 3.3.6.Final
2020-02-05 18:57:39 +0900 [INFO] (main): Starting server on 127.0.0.1:65432
2020-02-05 18:57:39 +0900 [INFO] (main): Bound on 127.0.0.1:65432 (api)
2020-02-05 18:58:39 +0900 [INFO] (XNIO-1 task-22): Starting a new session project id=1 workflow name=run_embulk session_time=2020-02-05T09:58:39+00:00
```


```
2020-02-05 18:59:16 +0900 [INFO] (0047@[0:fuga]+run_embulk+echo_path_prefix): sh>: env
...
path_prefix=/tmp/fuga/csv/sample
```

```
2020-02-05 18:59:16 +0900 [INFO] (0047@[0:fuga]+run_embulk+run_embulk): sh>: embulk run config.yml.liquid
2020-02-05 18:59:17.530 +0900: Embulk v0.9.23
2020-02-05 18:59:18.602 +0900 [WARN] (main): DEPRECATION: JRuby org.jruby.embed.ScriptingContainer is directly injected.
2020-02-05 18:59:21.784 +0900 [INFO] (main): Gem's home and path are set by default: "/Users/hsato/.embulk/lib/gems"
2020-02-05 18:59:25.696 +0900 [INFO] (main): Started Embulk v0.9.23
2020-02-05 18:59:25.833 +0900 [INFO] (0001:transaction): Listing local files at directory '/tmp/fuga/csv' filtering filename by prefix 'sample'
2020-02-05 18:59:25.834 +0900 [INFO] (0001:transaction): "follow_symlinks" is set false. Note that symbolic links to directories are skipped.
2020-02-05 18:59:25.836 +0900 [INFO] (0001:transaction): Loading files [/tmp/fuga/csv/sample_01.csv.gz]
2020-02-05 18:59:25.891 +0900 [INFO] (0001:transaction): Using local thread executor with max_threads=8 / output tasks 4 = input tasks 1 * 4
2020-02-05 18:59:25.899 +0900 [INFO] (0001:transaction): {done:  0 / 1, running: 0}
1,32864,2015-01-27 19:23:49,20150127,embulk
2,14824,2015-01-27 19:01:23,20150127,embulk jruby
3,27559,2015-01-28 02:20:02,20150128,Embulk "csv" parser plugin
4,11270,2015-01-29 11:54:36,20150129,
2020-02-05 18:59:26.027 +0900 [INFO] (0001:transaction): {done:  1 / 1, running: 0}
2020-02-05 18:59:26.032 +0900 [INFO] (main): Committed.
2020-02-05 18:59:26.032 +0900 [INFO] (main): Next config diff: {"in":{"last_path":"/tmp/fuga/csv/sample_01.csv.gz"},"out":{}}
```

## without env

```
% unset path_prefix
% echo $path_prefix

% digdag server -m
2020-02-05 19:00:55 +0900: Digdag v0.9.41
2020-02-05 19:00:56 +0900 [INFO] (main): secret encryption engine: disabled
2020-02-05 19:00:57 +0900 [INFO] (main): XNIO version 3.3.6.Final
2020-02-05 19:00:57 +0900 [INFO] (main): XNIO NIO Implementation Version 3.3.6.Final
2020-02-05 19:00:57 +0900 [INFO] (main): Starting server on 127.0.0.1:65432
2020-02-05 19:00:57 +0900 [INFO] (main): Bound on 127.0.0.1:65432 (api)
2020-02-05 19:01:10 +0900 [INFO] (XNIO-1 task-13): Starting a new session project id=1 workflow name=run_embulk session_time=2020-02-05T10:01:10+00:00
```

```
2020-02-05 19:01:11 +0900 [INFO] (0038@[0:fuga]+run_embulk+echo_path_prefix): sh>: env
timezone=UTC
... # no path_prefix
```

```
2020-02-05 19:01:12 +0900 [INFO] (0038@[0:fuga]+run_embulk+run_embulk): sh>: embulk run config.yml.liquid
2020-02-05 19:01:13.007 +0900: Embulk v0.9.23
2020-02-05 19:01:14.007 +0900 [WARN] (main): DEPRECATION: JRuby org.jruby.embed.ScriptingContainer is directly injected.
2020-02-05 19:01:16.909 +0900 [INFO] (main): Gem's home and path are set by default: "/Users/user/.embulk/lib/gems"
2020-02-05 19:01:19.885 +0900 [INFO] (main): Started Embulk v0.9.23
org.embulk.exec.PartialExecutionException: org.embulk.config.ConfigException: com.fasterxml.jackson.databind.JsonMappingException: Setting null to a task field is not allowed. Use Optional<T> to represent null.
	at org.embulk.exec.BulkLoader$LoaderState.buildPartialExecuteException(BulkLoader.java:340)
	at org.embulk.exec.BulkLoader.doRun(BulkLoader.java:566)
	at org.embulk.exec.BulkLoader.access$000(BulkLoader.java:35)
	at org.embulk.exec.BulkLoader$1.run(BulkLoader.java:353)
	at org.embulk.exec.BulkLoader$1.run(BulkLoader.java:350)
	at org.embulk.spi.Exec.doWith(Exec.java:22)
	at org.embulk.exec.BulkLoader.run(BulkLoader.java:350)
	at org.embulk.EmbulkEmbed.run(EmbulkEmbed.java:242)
	at org.embulk.EmbulkRunner.runInternal(EmbulkRunner.java:291)
	at org.embulk.EmbulkRunner.run(EmbulkRunner.java:155)
	at org.embulk.cli.EmbulkRun.runSubcommand(EmbulkRun.java:431)
	at org.embulk.cli.EmbulkRun.run(EmbulkRun.java:90)
	at org.embulk.cli.Main.main(Main.java:64)
	Suppressed: java.lang.NullPointerException
		at org.embulk.exec.BulkLoader.doCleanup(BulkLoader.java:463)
		at org.embulk.exec.BulkLoader$3.run(BulkLoader.java:397)
		at org.embulk.exec.BulkLoader$3.run(BulkLoader.java:394)
		at org.embulk.spi.Exec.doWith(Exec.java:22)
		at org.embulk.exec.BulkLoader.cleanup(BulkLoader.java:394)
		at org.embulk.EmbulkEmbed.run(EmbulkEmbed.java:245)
		... 5 more
Caused by: org.embulk.config.ConfigException: com.fasterxml.jackson.databind.JsonMappingException: Setting null to a task field is not allowed. Use Optional<T> to represent null.
	at org.embulk.config.ModelManager.readObjectWithConfigSerDe(ModelManager.java:78)
	at org.embulk.config.DataSourceImpl.loadConfig(DataSourceImpl.java:197)
	at org.embulk.standards.LocalFileInputPlugin.transaction(LocalFileInputPlugin.java:63)
	at org.embulk.spi.FileInputRunner.transaction(FileInputRunner.java:62)
	at org.embulk.exec.BulkLoader.doRun(BulkLoader.java:507)
	... 11 more
Caused by: com.fasterxml.jackson.databind.JsonMappingException: Setting null to a task field is not allowed. Use Optional<T> to represent null.
	at org.embulk.config.TaskSerDe$TaskDeserializer.deserialize(TaskSerDe.java:154)
	at com.fasterxml.jackson.databind.ObjectMapper._readValue(ObjectMapper.java:3708)
	at com.fasterxml.jackson.databind.ObjectMapper.readValue(ObjectMapper.java:2005)
	at org.embulk.config.ModelManager.readObjectWithConfigSerDe(ModelManager.java:73)
	... 15 more

Error: org.embulk.config.ConfigException: com.fasterxml.jackson.databind.JsonMappingException: Setting null to a task field is not allowed. Use Optional<T> to represent null.
2020-02-05 19:01:20 +0900 [ERROR] (0038@[0:fuga]+run_embulk+run_embulk): Task failed with unexpected error: Command failed with code 1
java.lang.RuntimeException: Command failed with code 1
	at io.digdag.standards.operator.ShOperatorFactory$ShOperator.runTask(ShOperatorFactory.java:143)
	at io.digdag.util.BaseOperator.run(BaseOperator.java:35)
	at io.digdag.core.agent.OperatorManager.callExecutor(OperatorManager.java:315)
	at io.digdag.core.agent.OperatorManager.runWithWorkspace(OperatorManager.java:257)
	at io.digdag.core.agent.OperatorManager.lambda$runWithHeartbeat$2(OperatorManager.java:137)
	at io.digdag.core.agent.ExtractArchiveWorkspaceManager.withExtractedArchive(ExtractArchiveWorkspaceManager.java:77)
	at io.digdag.core.agent.OperatorManager.runWithHeartbeat(OperatorManager.java:135)
	at io.digdag.core.agent.OperatorManager.run(OperatorManager.java:119)
	at io.digdag.core.agent.MultiThreadAgent.lambda$null$0(MultiThreadAgent.java:127)
	at java.util.concurrent.Executors$RunnableAdapter.call(Executors.java:511)
	at java.util.concurrent.FutureTask.run(FutureTask.java:266)
	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1149)
	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:624)
	at java.lang.Thread.run(Thread.java:748)
```
