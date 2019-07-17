

```
2019-07-17 16:40:57 +0900: Digdag v0.9.38
2019-07-17 16:40:58 +0900 [INFO] (main): Database migration started
2019-07-17 16:40:58 +0900 [INFO] (main): Applying database migration:20151204221156
2019-07-17 16:40:58 +0900 [INFO] (main): Applying database migration:20160602123456
2019-07-17 16:40:58 +0900 [INFO] (main): Applying database migration:20160602184025
2019-07-17 16:40:58 +0900 [INFO] (main): Applying database migration:20160610154832
2019-07-17 16:40:58 +0900 [INFO] (main): Applying database migration:20160623123456
2019-07-17 16:40:58 +0900 [INFO] (main): Applying database migration:20160719172538
2019-07-17 16:40:58 +0900 [INFO] (main): Applying database migration:20160817123456
2019-07-17 16:40:58 +0900 [INFO] (main): Applying database migration:20160818043815
2019-07-17 16:40:58 +0900 [INFO] (main): Applying database migration:20160818220026
2019-07-17 16:40:58 +0900 [INFO] (main): Applying database migration:20160908175551
2019-07-17 16:40:58 +0900 [INFO] (main): Applying database migration:20160926123456
2019-07-17 16:40:58 +0900 [INFO] (main): Applying database migration:20160928203753
2019-07-17 16:40:58 +0900 [INFO] (main): Applying database migration:20161005225356
2019-07-17 16:40:58 +0900 [INFO] (main): Applying database migration:20161028112233
2019-07-17 16:40:58 +0900 [INFO] (main): Applying database migration:20161110112233
2019-07-17 16:40:58 +0900 [INFO] (main): Applying database migration:20161209001857
2019-07-17 16:40:58 +0900 [INFO] (main): Applying database migration:20170116082921
2019-07-17 16:40:58 +0900 [INFO] (main): Applying database migration:20170116090744
2019-07-17 16:40:58 +0900 [INFO] (main): Applying database migration:20170223220127
2019-07-17 16:40:58 +0900 [INFO] (main): Applying database migration:20190318175338
2019-07-17 16:40:58 +0900 [INFO] (main): Database migration successfully finished.
2019-07-17 16:40:58 +0900 [WARN] (main): Using a new session time 2019-07-17T00:00:00+09:00.
2019-07-17 16:40:58 +0900 [INFO] (main): Using session /Users/user/OpenProjects/digdag/digdag-support/2019-07-17_twitter_require_params/.digdag/status/20190717T000000+0900.
2019-07-17 16:40:58 +0900 [INFO] (main): Starting a new session project id=1 workflow name=parenet session_time=2019-07-17T00:00:00+09:00
2019-07-17 16:40:59 +0900 [INFO] (0017@[0:default]+parenet+start): echo>: start 2019-07-17T00:00:00+09:00 parent
start 2019-07-17T00:00:00+09:00 parent
2019-07-17 16:41:00 +0900 [INFO] (0017@[0:default]+parenet+require): require>: child
2019-07-17 16:41:00 +0900 [INFO] (0017@[0:default]+parenet+require): Starting a new session project id=1 workflow name=child session_time=2019-07-17T00:00:00+09:00
2019-07-17 16:41:00 +0900 [INFO] (0017@[0:default]+child+start): echo>: start 2019-07-17T00:00:00+09:00 child
start 2019-07-17T00:00:00+09:00 child
2019-07-17 16:41:00 +0900 [INFO] (0017@[0:default]+child+shell): sh>: env
CAML_LD_LIBRARY_PATH=/Users/user/.opam/system/lib/stublibs:/usr/local/lib/ocaml/stublibs
timezone=Asia/Tokyo
project_id=1
session_id=2
_type=sh
task_name=+child+shell
session_local_time=2019-07-17 00:00:00
session_unixtime=1563289200
last_executed_session_date_compact=
session_tz_offset=+0900
last_executed_session_time=
session_time=2019-07-17T00:00:00+09:00
session_date_compact=20190717
session_date=2019-07-17
session_uuid=8d604fb0-850a-40f2-b8e2-0bf80e839ae4
last_executed_session_local_time=
last_executed_session_unixtime=
_command=env
hoge=foo                          # <--- HERE HERE HERE
attempt_id=2
last_executed_session_tz_offset=+0900
last_executed_session_date=
2019-07-17 16:41:01 +0900 [INFO] (0017@[0:default]+parenet+require): require>: child
Success. Task state is saved at /Users/user/OpenProjects/digdag/digdag-support/2019-07-17_twitter_require_params/.digdag/status/20190717T000000+0900 directory.
  * Use --session <daily | hourly | "yyyy-MM-dd[ HH:mm:ss]"> to not reuse the last session time.
  * Use --rerun, --start +NAME, or --goal +NAME argument to rerun skipped tasks.
```
