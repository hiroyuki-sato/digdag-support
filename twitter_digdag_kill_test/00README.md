## digdag kill test

最後まで実行

```
2018-04-16 13:15:39 +0900 [INFO] (0069@[0:kill_test]+kill_test+setup): sh>: echo start 2018-04-16T04:15:38+00:00
start 2018-04-16T04:15:38+00:00
2018-04-16 13:15:39 +0900 [INFO] (0069@[0:kill_test]+kill_test+long_task): sh>: ./long_task.sh
[long task] 2018-04-16 13:15:39 start
log_msg sleep 1/10
log_msg sleep 2/10
log_msg sleep 3/10
log_msg sleep 4/10
log_msg sleep 5/10
log_msg sleep 6/10
log_msg sleep 7/10
log_msg sleep 8/10
log_msg sleep 9/10
log_msg sleep 10/10
[long task] 2018-04-16 13:15:49 end
2018-04-16 13:15:50 +0900 [INFO] (0069@[0:kill_test]+kill_test+teardown): sh>: echo finish 2018-04-16T04:15:38+00:00
finish 2018-04-16T04:15:38+00:00
2018-04-16 13:16:23 +0900 [INFO] (XNIO-1 task-1): Starting a new session project id=1 workflow name=kill_test session_time=2018-04-16T04:16:23+00:00
```

途中で終了(digdag kill)

```
2018-04-16 13:16:23 +0900 [INFO] (0069@[0:kill_test]+kill_test+setup): sh>: echo start 2018-04-16T04:16:23+00:00
start 2018-04-16T04:16:23+00:00
2018-04-16 13:16:23 +0900 [INFO] (0069@[0:kill_test]+kill_test+long_task): sh>: ./long_task.sh
[long task] 2018-04-16 13:16:23 start
log_msg sleep 1/10
log_msg sleep 2/10
log_msg sleep 3/10
log_msg sleep 4/10
log_msg sleep 5/10
log_msg sleep 6/10
log_msg sleep 7/10
log_msg sleep 8/10
log_msg sleep 9/10
log_msg sleep 10/10
[long task] 2018-04-16 13:16:34 end
# finish taskが実行されない。
```


## digdag kill

```
% digdag attempts ; digdag kill 5 ; digdag attempts
2018-04-16 13:16:24 +0900: Digdag v0.9.24
Session attempts:
  ...
  session id: 5
  attempt id: 5
  uuid: 6135225c-9d08-48cd-80b8-38795fe27c17
  project: kill_test
  workflow: kill_test
  session time: 2018-04-16 04:16:23 +0000
  retry attempt name:
  params: {}
  created at: 2018-04-16 13:16:23 +0900
  finished at:
  kill requested: false # <-- 最初はfalse
  status: running
```

```
2018-04-16 13:16:25 +0900: Digdag v0.9.24
Kill requested for session attempt 5
```

```
2018-04-16 13:16:27 +0900: Digdag v0.9.24
Session attempts:
  ...

  session id: 5
  attempt id: 5
  uuid: 6135225c-9d08-48cd-80b8-38795fe27c17
  project: kill_test
  workflow: kill_test
  session time: 2018-04-16 04:16:23 +0000
  retry attempt name:
  params: {}
  created at: 2018-04-16 13:16:23 +0900
  finished at:
  kill requested: true # <-- 変わる
  status: running
```

