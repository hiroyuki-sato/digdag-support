## Sample output


```
2017-06-15 23:32:40 +0900: Digdag v0.9.12
2017-06-15 23:32:52 +0900 [WARN] (main): Reusing the last session time 2017-06-15T00:00:00+00:00.
2017-06-15 23:32:52 +0900 [INFO] (main): Using session /Users/users/digdag/digdag-support/twitter_multiple_embulk/.digdag/status/20170615T000000+0000.
2017-06-15 23:32:52 +0900 [INFO] (main): Starting a new session project id=1 workflow name=sample session_time=2017-06-15T00:00:00+00:00
2017-06-15 23:32:53 +0900 [INFO] (0017@[0:default]+sample+embulk): for_each>: {table=["table1","table2"]}
2017-06-15 23:32:54 +0900 [INFO] (0017@[0:default]+sample+embulk^sub+for-0=table=0=table1): sh>: ./dummy_embulk.sh
table1
2017-06-15 23:32:54 +0900 [INFO] (0017@[0:default]+sample+embulk^sub+for-0=table=1=table2): sh>: ./dummy_embulk.sh
table2
Success. Task state is saved at /Users/users/digdag/digdag-support/twitter_multiple_embulk/.digdag/status/20170615T000000+0000 directory.
  * Use --session <daily | hourly | "yyyy-MM-dd[ HH:mm:ss]"> to not reuse the last session time.
  * Use --rerun, --start +NAME, or --goal +NAME argument to rerun skipped tasks.
```


