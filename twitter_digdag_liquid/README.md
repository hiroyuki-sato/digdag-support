```
2017-06-25 22:03:01 +0900 [INFO] (XNIO-1 task-27): Starting a new session project id=1 workflow name=sample session_time=2017-06-25T00:00:00+09:00
2017-06-25 22:03:03 +0900 [INFO] (0052@[0:sample]+sample+test): sh>: mkdir test
2017-06-25 22:03:04 +0900 [INFO] (0052@[0:sample]+sample+list): sh>: find . -ls
8131140        0 drwx------    4 user            staff                 238  6 25 22:03 .
8131141        0 drwxr-xr-x    2 user            staff                 102  6 25 22:03 ./csv
8131142        8 -rw-r--r--    1 user            staff                 173  6 25 22:03 ./csv/sample_01.csv.gz
8131143       40 -rw-r--r--    1 user            staff               18584  6 25 22:03 ./error.log
8131144        8 -rw-r--r--    1 user            staff                 857  6 25 22:03 ./parent.yml.liquid
8131145        8 -rw-r--r--    1 user            staff                 138  6 25 22:03 ./sample.dig
8131146        0 drwxr-xr-x    2 user            staff                 102  6 25 22:03 ./sub
8131147        8 -rw-r--r--    1 user            staff                  46  6 25 22:03 ./sub/_child.yml.liquid
2017-06-25 22:03:04 +0900 [INFO] (0052@[0:sample]+sample+cwd): sh>: pwd
/private/var/folders/_v/zntl90w12016v2rddwfm5cgc0000gn/T/digdag-tempdir178461279609375853/workspace/+sample+cwd_5526548746336894942
2017-06-25 22:03:04 +0900 [INFO] (0052@[0:sample]+sample+embulk): sh>: embulk run parent.yml.liquid
2017-06-25 22:03:14.312 +0900: Embulk v0.8.25
2017-06-25 22:03:27.551 +0900 [INFO] (0001:transaction): Listing local files at directory 'csv' filtering filename by prefix 'sample_'
2017-06-25 22:03:27.554 +0900 [INFO] (0001:transaction): "follow_symlinks" is set false. Note that symbolic links to directories are skipped.
2017-06-25 22:03:27.559 +0900 [INFO] (0001:transaction): Loading files [csv/sample_01.csv.gz]
2017-06-25 22:03:27.623 +0900 [INFO] (0001:transaction): Using local thread executor with max_threads=8 / output tasks 4 = input tasks 1 * 4
2017-06-25 22:03:27.661 +0900 [INFO] (0001:transaction): {done:  0 / 1, running: 0}
2017-06-25 22:03:27.757 +0900 [INFO] (0015:task-0000): Writing local file 'test/sample000.00.csv'
2017-06-25 22:03:27.758 +0900 [INFO] (0001:transaction): {done:  1 / 1, running: 0}
org.embulk.exec.PartialExecutionException: java.lang.RuntimeException: java.io.FileNotFoundException: test/sample000.00.csv (No such file or directory)
	at org.embulk.exec.BulkLoader$LoaderState.buildPartialExecuteException(org/embulk/exec/BulkLoader.java:375)
	at org.embulk.exec.BulkLoader.doRun(org/embulk/exec/BulkLoader.java:607)
	at org.embulk.exec.BulkLoader.access$000(org/embulk/exec/BulkLoader.java:35)
	at org.embulk.exec.BulkLoader$1.run(org/embulk/exec/BulkLoader.java:391)
	at org.embulk.exec.BulkLoader$1.run(org/embulk/exec/BulkLoader.java:387)
	at org.embulk.spi.Exec.doWith(org/embulk/spi/Exec.java:25)
	at org.embulk.exec.BulkLoader.run(org/embulk/exec/BulkLoader.java:387)
	at org.embulk.EmbulkEmbed.run(org/embulk/EmbulkEmbed.java:180)
	at java.lang.reflect.Method.invoke(java/lang/reflect/Method.java:498)
	at org.jruby.javasupport.JavaMethod.invokeDirectWithExceptionHandling(org/jruby/javasupport/JavaMethod.java:453)
	at org.jruby.javasupport.JavaMethod.invokeDirect(org/jruby/javasupport/JavaMethod.java:314)
	at RUBY.run(/Users/user/.embulk/bin/embulk!/embulk/runner.rb:84)
	at RUBY.run(/Users/user/.embulk/bin/embulk!/embulk/command/embulk_run.rb:269)
	at RUBY.<main>(/Users/user/.embulk/bin/embulk!/embulk/command/embulk_main.rb:2)
	at org.jruby.Ruby.runInterpreter(org/jruby/Ruby.java:850)
	at org.jruby.Ruby.loadFile(org/jruby/Ruby.java:2976)
	at org.jruby.RubyKernel.requireCommon(org/jruby/RubyKernel.java:963)
	at org.jruby.RubyKernel.require(org/jruby/RubyKernel.java:956)
	at org.jruby.RubyKernel$INVOKER$s$1$0$require19.call(org/jruby/RubyKernel$INVOKER$s$1$0$require19.gen)
	at RUBY.(root)(uri:classloader:/META-INF/jruby.home/lib/ruby/stdlib/rubygems/core_ext/kernel_require.rb:1)
	at Users.user.$_dot_embulk.bin.embulk.embulk.command.embulk_bundle.invokeOther34:require(Users/user/$_dot_embulk/bin/embulk/embulk/command/file:/Users/user/.embulk/bin/embulk!/embulk/command/embulk_bundle.rb:46)
	at Users.user.$_dot_embulk.bin.embulk.embulk.command.embulk_bundle.<main>(file:/Users/user/.embulk/bin/embulk!/embulk/command/embulk_bundle.rb:46)
	at java.lang.invoke.MethodHandle.invokeWithArguments(java/lang/invoke/MethodHandle.java:627)
	at org.jruby.Ruby.runScript(org/jruby/Ruby.java:834)
	at org.jruby.Ruby.runNormally(org/jruby/Ruby.java:749)
	at org.jruby.Ruby.runNormally(org/jruby/Ruby.java:767)
	at org.jruby.Ruby.runFromMain(org/jruby/Ruby.java:580)
	at org.jruby.Main.doRunFromMain(org/jruby/Main.java:425)
	at org.jruby.Main.internalRun(org/jruby/Main.java:313)
	at org.jruby.Main.run(org/jruby/Main.java:242)
	at org.jruby.Main.main(org/jruby/Main.java:204)
	at org.embulk.cli.Main.main(org/embulk/cli/Main.java:23)
Caused by: java.lang.RuntimeException: java.io.FileNotFoundException: test/sample000.00.csv (No such file or directory)
	at org.embulk.standards.LocalFileOutputPlugin$1.nextFile(LocalFileOutputPlugin.java:98)
	at org.embulk.spi.util.FileOutputOutputStream.nextFile(FileOutputOutputStream.java:34)
	at org.embulk.spi.util.LineEncoder.nextFile(LineEncoder.java:93)
	at org.embulk.standards.CsvFormatterPlugin.open(CsvFormatterPlugin.java:116)
	at org.embulk.spi.FileOutputRunner.open(FileOutputRunner.java:140)
	at org.embulk.exec.LocalExecutorPlugin$ScatterTransactionalPageOutput.openOutputs(LocalExecutorPlugin.java:449)
	at org.embulk.exec.LocalExecutorPlugin$ScatterExecutor.runInputTask(LocalExecutorPlugin.java:281)
	at org.embulk.exec.LocalExecutorPlugin$ScatterExecutor.access$000(LocalExecutorPlugin.java:212)
	at org.embulk.exec.LocalExecutorPlugin$ScatterExecutor$1.call(LocalExecutorPlugin.java:257)
	at org.embulk.exec.LocalExecutorPlugin$ScatterExecutor$1.call(LocalExecutorPlugin.java:253)
	at java.util.concurrent.FutureTask.run(FutureTask.java:266)
	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1142)
	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:617)
	at java.lang.Thread.run(Thread.java:745)
Caused by: java.io.FileNotFoundException: test/sample000.00.csv (No such file or directory)
	at java.io.FileOutputStream.open0(Native Method)
	at java.io.FileOutputStream.open(FileOutputStream.java:270)
	at java.io.FileOutputStream.<init>(FileOutputStream.java:213)
	at java.io.FileOutputStream.<init>(FileOutputStream.java:162)
	at org.embulk.standards.LocalFileOutputPlugin$1.nextFile(LocalFileOutputPlugin.java:96)
	... 13 more

Error: java.lang.RuntimeException: java.io.FileNotFoundException: test/sample000.00.csv (No such file or directory)
2017-06-25 22:03:27 +0900 [ERROR] (0052@[0:sample]+sample+embulk): Task failed with unexpected error: Command failed with code 1
java.lang.RuntimeException: Command failed with code 1
	at io.digdag.standards.operator.ShOperatorFactory$ShOperator.runTask(ShOperatorFactory.java:143)
	at io.digdag.util.BaseOperator.run(BaseOperator.java:35)
	at io.digdag.core.agent.OperatorManager.callExecutor(OperatorManager.java:312)
	at io.digdag.core.agent.OperatorManager.runWithWorkspace(OperatorManager.java:254)
	at io.digdag.core.agent.OperatorManager.lambda$runWithHeartbeat$2(OperatorManager.java:137)
	at io.digdag.core.agent.ExtractArchiveWorkspaceManager.withExtractedArchive(ExtractArchiveWorkspaceManager.java:36)
	at io.digdag.core.agent.OperatorManager.runWithHeartbeat(OperatorManager.java:135)
	at io.digdag.core.agent.OperatorManager.run(OperatorManager.java:119)
	at io.digdag.core.agent.MultiThreadAgent.lambda$null$0(MultiThreadAgent.java:127)
	at java.util.concurrent.Executors$RunnableAdapter.call(Executors.java:511)
	at java.util.concurrent.FutureTask.run(FutureTask.java:266)
	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1142)
	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:617)
	at java.lang.Thread.run(Thread.java:745)
```
