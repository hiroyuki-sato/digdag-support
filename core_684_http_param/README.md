##

```
digdag run -a test2
2017-11-15 20:01:20 +0900 [WARN] (main): Reusing the last session time 2017-11-15T00:00:00+00:00.
2017-11-15 20:01:20 +0900 [INFO] (main): Using session /Users/hsato/OpenProjects/digdag/digdag-support/core_684_http_param/.digdag/status/20171115T000000+0000.
2017-11-15 20:01:20 +0900 [INFO] (main): Starting a new session project id=1 workflow name=test2 session_time=2017-11-15T00:00:00+00:00
2017-11-15 20:01:21 +0900 [INFO] (0017@[0:default]+test2+get_param+step1): http>: http://localhost:4567/
2017-11-15 20:01:21 +0900 [INFO] (0017@[0:default]+test2+get_param+step1): Logging initialized @2581ms
2017-11-15 20:01:21 +0900 [INFO] (0017@[0:default]+test2+get_param+step1): Sending HTTP request: GET http://localhost:4567/
2017-11-15 20:01:21 +0900 [INFO] (0017@[0:default]+test2+get_param+step1): Received HTTP response: GET http://localhost:4567/: HttpContentResponse[HTTP/1.1 200 OK - 23 bytes]
2017-11-15 20:01:21 +0900 [INFO] (0017@[0:default]+test2+get_param+step2): rb>: MyWorkflow.step1
2017-11-15 20:01:22 +0900 [INFO] (0017@[0:default]+test2+get_param+step3): http>: http://localhost:4567/bob/20
2017-11-15 20:01:22 +0900 [INFO] (0017@[0:default]+test2+get_param+step3): Sending HTTP request: GET http://localhost:4567/bob/20
2017-11-15 20:01:22 +0900 [INFO] (0017@[0:default]+test2+get_param+step3): Received HTTP response: GET http://localhost:4567/bob/20: HttpContentResponse[HTTP/1.1 200 OK - 27 bytes]
2017-11-15 20:01:22 +0900 [INFO] (0017@[0:default]+test2+get_param+step4): rb>: MyWorkflow.step2
2017-11-15 20:01:23 +0900 [INFO] (0017@[0:default]+test2+get_param+step5): echo>: hello bob age: 20 20
hello bob age: 20 20
Success. Task state is saved at /Users/hsato/OpenProjects/digdag/digdag-support/core_684_http_param/.digdag/status/20171115T000000+0000 directory.
  * Use --session <daily | hourly | "yyyy-MM-dd[ HH:mm:ss]"> to not reuse the last session time.
  * Use --rerun, --start +NAME, or --goal +NAME argument to rerun skipped tasks.
```
