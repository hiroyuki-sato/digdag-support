##

[[Q] How to set up task_ttl in workflow?]()https://github.com/treasure-data/digdag/issues/746

```
2018-04-02 19:30:20 +0900: Digdag v0.9.24
2018-04-02 19:30:22 +0900 [WARN] (main): Using a new session time 2018-04-02T00:00:00+00:00.
2018-04-02 19:30:22 +0900 [INFO] (main): Using session /path/to/digdag-support/core_746_ttl/.digdag/status/20180402T000000+0000.
2018-04-02 19:30:22 +0900 [INFO] (main): Starting a new session project id=1 workflow name=mydig session_time=2018-04-02T00:00:00+00:00
2018-04-02 19:30:23 +0900 [INFO] (0017@[0:default]+mydig+test): sh>: ./hoge.sh
2018-04-02 19:30:29 +0900 [INFO] (0022@[0:default]+mydig^sla+notice): echo>: sla alert!!
sla alert!!
2018-04-02 19:30:29 +0900 [INFO] (0021@[0:default]+mydig^sla^fail): type: fail
2018-04-02 19:30:29 +0900 [ERROR] (0021@[0:default]+mydig^sla^fail): Task +mydig^sla^fail failed.
SLA violation
test
2018-04-02 19:30:29 +0900 [INFO] (0017@[0:default]+mydig^failure-alert): type: notify
error:
  * +mydig^sla^fail:
    SLA violation

Task state is saved at /Users/hsato/OpenProjects/digdag/digdag-support/core_746_ttl/.digdag/status/20180402T000000+0000 directory.
  * Use --session <daily | hourly | "yyyy-MM-dd[ HH:mm:ss]"> to not reuse the last session time.
  * Use --rerun, --start +NAME, or --goal +NAME argument to rerun skipped tasks.
```

