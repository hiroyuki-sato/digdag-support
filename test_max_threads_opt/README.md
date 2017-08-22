## max_threads: 2

```
digdag run -a fuga --max-task-threads 2
2017-08-22 20:39:55 +0900: Digdag v0.9.15
2017-08-22 20:39:56 +0900 [WARN] (main): Reusing the last session time 2017-08-22T00:00:00+00:00.
2017-08-22 20:39:56 +0900 [INFO] (main): Using session test_max_threads_opt/.digdag/status/20170822T000000+0000.
2017-08-22 20:39:56 +0900 [INFO] (main): Starting a new session project id=1 workflow name=fuga session_time=2017-08-22T00:00:00+00:00
2017-08-22 20:39:57 +0900 [INFO] (0017@[0:default]+fuga+repeat): for_each>: {num=[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]}
2017-08-22 20:39:58 +0900 [INFO] (0017@[0:default]+fuga+repeat^sub+for-0=num=1=2): sh>: ruby -e 'puts Time.now.strftime("%H:%M:%S.%N 2"); sleep 1'
2017-08-22 20:39:58 +0900 [INFO] (0020@[0:default]+fuga+repeat^sub+for-0=num=0=1): sh>: ruby -e 'puts Time.now.strftime("%H:%M:%S.%N 1"); sleep 1'
20:39:58.289876000 2
20:39:58.290051000 1
2017-08-22 20:39:59 +0900 [INFO] (0017@[0:default]+fuga+repeat^sub+for-0=num=3=4): sh>: ruby -e 'puts Time.now.strftime("%H:%M:%S.%N 4"); sleep 1'
2017-08-22 20:39:59 +0900 [INFO] (0020@[0:default]+fuga+repeat^sub+for-0=num=2=3): sh>: ruby -e 'puts Time.now.strftime("%H:%M:%S.%N 3"); sleep 1'
20:40:00.172282000 3
20:40:00.172282000 4
2017-08-22 20:40:01 +0900 [INFO] (0017@[0:default]+fuga+repeat^sub+for-0=num=5=6): sh>: ruby -e 'puts Time.now.strftime("%H:%M:%S.%N 6"); sleep 1'
2017-08-22 20:40:01 +0900 [INFO] (0020@[0:default]+fuga+repeat^sub+for-0=num=4=5): sh>: ruby -e 'puts Time.now.strftime("%H:%M:%S.%N 5"); sleep 1'
20:40:01.686395000 5
20:40:01.686040000 6
2017-08-22 20:40:02 +0900 [INFO] (0020@[0:default]+fuga+repeat^sub+for-0=num=6=7): sh>: ruby -e 'puts Time.now.strftime("%H:%M:%S.%N 7"); sleep 1'
2017-08-22 20:40:02 +0900 [INFO] (0017@[0:default]+fuga+repeat^sub+for-0=num=7=8): sh>: ruby -e 'puts Time.now.strftime("%H:%M:%S.%N 8"); sleep 1'
20:40:03.161911000 8
20:40:03.161912000 7
2017-08-22 20:40:04 +0900 [INFO] (0020@[0:default]+fuga+repeat^sub+for-0=num=8=9): sh>: ruby -e 'puts Time.now.strftime("%H:%M:%S.%N 9"); sleep 1'
2017-08-22 20:40:04 +0900 [INFO] (0017@[0:default]+fuga+repeat^sub+for-0=num=9=10): sh>: ruby -e 'puts Time.now.strftime("%H:%M:%S.%N 10"); sleep 1'
20:40:04.700356000 10
20:40:04.700356000 9
Success. Task state is saved at test_max_threads_opt/.digdag/status/20170822T000000+0000 directory.
  * Use --session <daily | hourly | "yyyy-MM-dd[ HH:mm:ss]"> to not reuse the last session time.
  * Use --rerun, --start +NAME, or --goal +NAME argument to rerun skipped tasks.
```

## max_threads: unlimited

```
digdag run -a fuga
2017-08-22 20:40:54 +0900: Digdag v0.9.15
2017-08-22 20:40:55 +0900 [WARN] (main): Reusing the last session time 2017-08-22T00:00:00+00:00.
2017-08-22 20:40:55 +0900 [INFO] (main): Using session test_max_threads_opt/.digdag/status/20170822T000000+0000.
2017-08-22 20:40:55 +0900 [INFO] (main): Starting a new session project id=1 workflow name=fuga session_time=2017-08-22T00:00:00+00:00
2017-08-22 20:40:56 +0900 [INFO] (0017@[0:default]+fuga+repeat): for_each>: {num=[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]}
2017-08-22 20:40:58 +0900 [INFO] (0021@[0:default]+fuga+repeat^sub+for-0=num=2=3): sh>: ruby -e 'puts Time.now.strftime("%H:%M:%S.%N 3"); sleep 1'
2017-08-22 20:40:58 +0900 [INFO] (0023@[0:default]+fuga+repeat^sub+for-0=num=4=5): sh>: ruby -e 'puts Time.now.strftime("%H:%M:%S.%N 5"); sleep 1'
2017-08-22 20:40:58 +0900 [INFO] (0027@[0:default]+fuga+repeat^sub+for-0=num=8=9): sh>: ruby -e 'puts Time.now.strftime("%H:%M:%S.%N 9"); sleep 1'
2017-08-22 20:40:58 +0900 [INFO] (0022@[0:default]+fuga+repeat^sub+for-0=num=3=4): sh>: ruby -e 'puts Time.now.strftime("%H:%M:%S.%N 4"); sleep 1'
2017-08-22 20:40:58 +0900 [INFO] (0020@[0:default]+fuga+repeat^sub+for-0=num=1=2): sh>: ruby -e 'puts Time.now.strftime("%H:%M:%S.%N 2"); sleep 1'
2017-08-22 20:40:58 +0900 [INFO] (0026@[0:default]+fuga+repeat^sub+for-0=num=7=8): sh>: ruby -e 'puts Time.now.strftime("%H:%M:%S.%N 8"); sleep 1'
2017-08-22 20:40:58 +0900 [INFO] (0025@[0:default]+fuga+repeat^sub+for-0=num=6=7): sh>: ruby -e 'puts Time.now.strftime("%H:%M:%S.%N 7"); sleep 1'
2017-08-22 20:40:58 +0900 [INFO] (0028@[0:default]+fuga+repeat^sub+for-0=num=9=10): sh>: ruby -e 'puts Time.now.strftime("%H:%M:%S.%N 10"); sleep 1'
2017-08-22 20:40:58 +0900 [INFO] (0024@[0:default]+fuga+repeat^sub+for-0=num=5=6): sh>: ruby -e 'puts Time.now.strftime("%H:%M:%S.%N 6"); sleep 1'
2017-08-22 20:40:58 +0900 [INFO] (0017@[0:default]+fuga+repeat^sub+for-0=num=0=1): sh>: ruby -e 'puts Time.now.strftime("%H:%M:%S.%N 1"); sleep 1'
20:40:58.805237000 3
20:40:58.805339000 5
20:40:59.049111000 9
20:40:59.053803000 7
20:40:59.056224000 6
20:40:59.056896000 10
20:40:59.058423000 1
20:40:59.062680000 4
20:40:59.062245000 2
20:40:59.135012000 8
Success. Task state is saved at test_max_threads_opt/.digdag/status/20170822T000000+0000 directory.
  * Use --session <daily | hourly | "yyyy-MM-dd[ HH:mm:ss]"> to not reuse the last session time.
  * Use --rerun, --start +NAME, or --goal +NAME argument to rerun skipped tasks.
```
