##

```
digdag run -a test.dig
2017-09-06 00:43:03 +0900: Digdag v0.9.16
2017-09-06 00:43:04 +0900 [WARN] (main): Reusing the last session time 2017-09-05T00:00:00+00:00.
2017-09-06 00:43:04 +0900 [INFO] (main): Using session /digdag-support/core_641_background_test/.digdag/status/20170905T000000+0000.
2017-09-06 00:43:04 +0900 [INFO] (main): Starting a new session project id=1 workflow name=test session_time=2017-09-05T00:00:00+00:00
2017-09-06 00:43:05 +0900 [INFO] (0017@[0:default]+test+prepare+data1): sh>: tasks/prepare_data1.sh
2017-09-06 00:43:05 +0900 [INFO] (0018@[0:default]+test+prepare+data2): sh>: tasks/prepare_data2.sh
This is tasks/prepare_data1.sh
This is tasks/prepare_data2.sh
done tasks/prepare_data2.sh
done tasks/prepare_data1.sh
2017-09-06 00:43:10 +0900 [INFO] (0017@[0:default]+test+prepare+data3): sh>: tasks/prepare_data3.sh
This is tasks/prepare_data3.sh
done tasks/prepare_data3.sh
2017-09-06 00:43:13 +0900 [INFO] (0017@[0:default]+test+analyze): sh>: tasks/analyze_prepared_data_sets.sh
This is tasks/analyze_prepared_data_sets.sh
done tasks/analyze_prepared_data_sets.sh
Success. Task state is saved at /digdag-support/core_641_background_test/.digdag/status/20170905T000000+0000 directory.
  * Use --session <daily | hourly | "yyyy-MM-dd[ HH:mm:ss]"> to not reuse the last session time.
  * Use --rerun, --start +NAME, or --goal +NAME argument to rerun skipped tasks.
```

