
* [secret_test.dig](secret_test.dig)
* [share.dig](common/share.dig)

```
digdag secrets --local --set secret.hoge=hogehoge
```


```
2018-08-16 12:40:44 +0900: Digdag v0.9.27
2018-08-16 12:40:45 +0900 [WARN] (main): Reusing the last session time 2018-08-16T00:00:00+00:00.
2018-08-16 12:40:45 +0900 [INFO] (main): Using session /path/to/digdag-support/twitter_digdag_secret_share/.digdag/status/20180816T000000+0000.
2018-08-16 12:40:45 +0900 [INFO] (main): Starting a new session project id=1 workflow name=secret_test session_time=2018-08-16T00:00:00+00:00
2018-08-16 12:40:46 +0900 [INFO] (0017@[0:default]+secret_test+test1): sh>: echo $export_secret
${secret:secret.hoge}
2018-08-16 12:40:47 +0900 [INFO] (0017@[0:default]+secret_test+test2): sh>: echo $share_secret
hogehoge
2018-08-16 12:40:47 +0900 [INFO] (0017@[0:default]+secret_test+test3): sh>: echo  $share_secret 2
hogehoge 2
Success. Task state is saved at /Users/hsato/OpenProjects/digdag/digdag-support/twitter_digdag_secret_share/.digdag/status/20180816T000000+0000 directory.
  * Use --session <daily | hourly | "yyyy-MM-dd[ HH:mm:ss]"> to not reuse the last session time.
  * Use --rerun, --start +NAME, or --goal +NAME argument to rerun skipped tasks.
```
