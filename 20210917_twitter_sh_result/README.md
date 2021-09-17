
```
2021-09-17 09:36:47 +0900: Digdag v0.10.2
2021-09-17 09:36:48 +0900 [WARN] (main): Reusing the last session time 2021-09-17T00:00:00+09:00.
2021-09-17 09:36:48 +0900 [INFO] (main): Using session /path/to/digdag-support/20210917_twitter_sh_result/.digdag/status/20210917T000000+0900.
2021-09-17 09:36:48 +0900 [INFO] (main): Starting a new session project id=1 workflow name=test session_time=2021-09-17T00:00:00+09:00
2021-09-17 09:36:49 +0900 [INFO] (0017@[0:default]+test+task1): sh_result>: ./hello
2021-09-17 09:36:50 +0900 [INFO] (0017@[0:default]+test+task2): echo>: [{"name":"item1","id":"001"},{"name":"item2","id":"002"}]
[{"name":"item1","id":"001"},{"name":"item2","id":"002"}]
Success. Task state is saved at /path/to/digdag-support/20210917_twitter_sh_result/.digdag/status/20210917T000000+0900 directory.
  * Use --session <daily | hourly | "yyyy-MM-dd[ HH:mm:ss]"> to not reuse the last session time.
  * Use --rerun, --start +NAME, or --goal +NAME argument to rerun skipped tasks.
```
