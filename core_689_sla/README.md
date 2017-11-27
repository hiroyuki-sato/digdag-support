## set SLA for each tasks

* [sla_task.dig](sla_task.dig)
* [prev_task1.dig](prev_task1.dig)
* [prev_task2.dig](prev_task2.dig)

```
digdag run sla_task
2017-11-27 18:51:17 +0900: Digdag v0.9.20
2017-11-27 18:51:18 +0900 [WARN] (main): Reusing the last session time 2017-11-27T00:00:00+00:00.
2017-11-27 18:51:18 +0900 [INFO] (main): Using session /private/tmp/test/.digdag/status/20171127T000000+0000.
2017-11-27 18:51:18 +0900 [INFO] (main): Starting a new session project id=1 workflow name=sla_task session_time=2017-11-27T00:00:00+00:00
2017-11-27 18:51:19 +0900 [INFO] (0017@[0:default]+sla_task+require1): require>: prev_task1
2017-11-27 18:51:19 +0900 [INFO] (0017@[0:default]+sla_task+require1): Starting a new session project id=1 workflow name=prev_task1 session_time=2017-11-27T00:00:00+00:00
2017-11-27 18:51:20 +0900 [INFO] (0017@[0:default]+prev_task1+task1): sh>: sleep 15 ; echo This is prev_task1
2017-11-27 18:51:21 +0900 [INFO] (0021@[0:default]+sla_task+require1): require>: prev_task1
2017-11-27 18:51:23 +0900 [INFO] (0021@[0:default]+sla_task+require1): require>: prev_task1
2017-11-27 18:51:25 +0900 [INFO] (0021@[0:default]+sla_task+require1): require>: prev_task1
2017-11-27 18:51:27 +0900 [INFO] (0021@[0:default]+sla_task+require1): require>: prev_task1
2017-11-27 18:51:29 +0900 [INFO] (0021@[0:default]+sla_task+require1): require>: prev_task1
2017-11-27 18:51:30 +0900 [INFO] (0022@[0:default]+prev_task1^sla+notice): echo>: prev_task1 not finished
prev_task1 not finished
2017-11-27 18:51:30 +0900 [INFO] (0021@[0:default]+prev_task1^sla^alert): type: notify
2017-11-27 18:51:30 +0900 [INFO] (0021@[0:default]+sla_task+require1): require>: prev_task1
2017-11-27 18:51:32 +0900 [INFO] (0021@[0:default]+sla_task+require1): require>: prev_task1
2017-11-27 18:51:34 +0900 [INFO] (0021@[0:default]+sla_task+require1): require>: prev_task1
This is prev_task1
2017-11-27 18:51:35 +0900 [INFO] (0017@[0:default]+sla_task+require1): require>: prev_task1
2017-11-27 18:51:35 +0900 [INFO] (0017@[0:default]+sla_task+require2): require>: prev_task2
2017-11-27 18:51:35 +0900 [INFO] (0017@[0:default]+sla_task+require2): Starting a new session project id=1 workflow name=prev_task2 session_time=2017-11-27T00:00:00+00:00
2017-11-27 18:51:36 +0900 [INFO] (0017@[0:default]+prev_task2+task1): sh>: sleep 15 ; echo This is prev_task2
2017-11-27 18:51:37 +0900 [INFO] (0021@[0:default]+sla_task+require2): require>: prev_task2
2017-11-27 18:51:39 +0900 [INFO] (0021@[0:default]+sla_task+require2): require>: prev_task2
2017-11-27 18:51:41 +0900 [INFO] (0021@[0:default]+sla_task+require2): require>: prev_task2
2017-11-27 18:51:42 +0900 [INFO] (0021@[0:default]+sla_task+require2): require>: prev_task2
2017-11-27 18:51:44 +0900 [INFO] (0021@[0:default]+sla_task+require2): require>: prev_task2
2017-11-27 18:51:46 +0900 [INFO] (0022@[0:default]+prev_task2^sla+notice): echo>: prev_task2 not finished
prev_task2 not finished
2017-11-27 18:51:46 +0900 [INFO] (0021@[0:default]+prev_task2^sla^alert): type: notify
2017-11-27 18:51:46 +0900 [INFO] (0023@[0:default]+sla_task+require2): require>: prev_task2
2017-11-27 18:51:48 +0900 [INFO] (0023@[0:default]+sla_task+require2): require>: prev_task2
2017-11-27 18:51:50 +0900 [INFO] (0023@[0:default]+sla_task+require2): require>: prev_task2
This is prev_task2
2017-11-27 18:51:52 +0900 [INFO] (0017@[0:default]+sla_task+require2): require>: prev_task2
Success. Task state is saved at /private/tmp/test/.digdag/status/20171127T000000+0000 directory.
  * Use --session <daily | hourly | "yyyy-MM-dd[ HH:mm:ss]"> to not reuse the last session time.
  * Use --rerun, --start +NAME, or --goal +NAME argument to rerun skipped tasks.
```
