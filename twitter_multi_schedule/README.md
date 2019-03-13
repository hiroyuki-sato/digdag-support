
```
digdag server -m
2019-03-13 13:41:13 +0900: Digdag v0.9.35
2019-03-13 13:41:15 +0900 [INFO] (main): secret encryption engine: disabled
2019-03-13 13:41:15 +0900 [INFO] (main): XNIO version 3.3.6.Final
2019-03-13 13:41:15 +0900 [INFO] (main): XNIO NIO Implementation Version 3.3.6.Final
2019-03-13 13:41:15 +0900 [INFO] (main): Starting server on 127.0.0.1:65432
2019-03-13 13:41:15 +0900 [INFO] (main): Bound on 127.0.0.1:65432 (api)
^C2019-03-13 13:41:43 +0900 [INFO] (shutdown): Started shutdown process
2019-03-13 13:41:43 +0900 [INFO] (shutdown): Shutting down workflow executor loop
2019-03-13 13:41:43 +0900 [INFO] (shutdown): Closing HTTP listening sockets
2019-03-13 13:41:43 +0900 [INFO] (shutdown): Waiting for completion of running HTTP requests...
2019-03-13 13:41:43 +0900 [INFO] (shutdown): Shutting down HTTP worker threads
2019-03-13 13:41:43 +0900 [INFO] (shutdown): Shutting down system
2019-03-13 13:41:43 +0900 [INFO] (shutdown): Shutdown completed
hsato-mbp13:~ hsato$ digdag server -m
2019-03-13 13:41:44 +0900: Digdag v0.9.35
2019-03-13 13:41:46 +0900 [INFO] (main): secret encryption engine: disabled
2019-03-13 13:41:46 +0900 [INFO] (main): XNIO version 3.3.6.Final
2019-03-13 13:41:46 +0900 [INFO] (main): XNIO NIO Implementation Version 3.3.6.Final
2019-03-13 13:41:46 +0900 [INFO] (main): Starting server on 127.0.0.1:65432
2019-03-13 13:41:46 +0900 [INFO] (main): Bound on 127.0.0.1:65432 (api)
2019-03-13 13:42:00 +0900 [INFO] (scheduler-0): Starting a new session project id=1 workflow name=second session_time=2019-03-13T13:00:00+09:00
2019-03-13 13:42:00 +0900 [INFO] (scheduler-0): Updating next schedule time: sched=StoredSchedule{id=2, projectId=1, createdAt=2019-03-13T04:41:49.430Z, updatedAt=2019-03-13T04:41:49.430Z, workflowName=second, workflowDefinitionId=2, nextRunTime=2019-03-13T04:42:00Z, nextScheduleTime=2019-03-13T04:00:00Z}, next=ScheduleTime{runTime=2019-03-13T05:42:00Z, time=2019-03-13T05:00:00Z}, lastSessionTime=2019-03-13T04:00:00Z
2019-03-13 13:42:02 +0900 [INFO] (0027@[0:hoge]+second+second_task1): echo>: second task1 2019-03-13T13:00:00+09:00
second task1 2019-03-13T13:00:00+09:00
2019-03-13 13:43:00 +0900 [INFO] (scheduler-0): Starting a new session project id=1 workflow name=first session_time=2019-03-13T13:00:00+09:00
2019-03-13 13:43:00 +0900 [INFO] (scheduler-0): Updating next schedule time: sched=StoredSchedule{id=1, projectId=1, createdAt=2019-03-13T04:41:49.430Z, updatedAt=2019-03-13T04:41:49.430Z, workflowName=first, workflowDefinitionId=1, nextRunTime=2019-03-13T04:43:00Z, nextScheduleTime=2019-03-13T04:00:00Z}, next=ScheduleTime{runTime=2019-03-13T05:43:00Z, time=2019-03-13T05:00:00Z}, lastSessionTime=2019-03-13T04:00:00Z
2019-03-13 13:43:01 +0900 [INFO] (0027@[0:hoge]+first+require_wf2): require>: second
2019-03-13 13:43:01 +0900 [INFO] (0027@[0:hoge]+first+first_task1): echo>: first task1 2019-03-13T13:00:00+09:00
first task1 2019-03-13T13:00:00+09:00



^C2019-03-13 13:43:26 +0900 [INFO] (shutdown): Started shutdown process
2019-03-13 13:43:26 +0900 [INFO] (shutdown): Shutting down workflow executor loop
2019-03-13 13:43:26 +0900 [INFO] (shutdown): Closing HTTP listening sockets
2019-03-13 13:43:26 +0900 [INFO] (shutdown): Waiting for completion of running HTTP requests...
2019-03-13 13:43:26 +0900 [INFO] (shutdown): Shutting down HTTP worker threads
2019-03-13 13:43:26 +0900 [INFO] (shutdown): Shutting down system
2019-03-13 13:43:26 +0900 [INFO] (shutdown): Shutdown completed
hsato-mbp13:~ hsato$ digdag server -m
2019-03-13 13:43:51 +0900: Digdag v0.9.35
2019-03-13 13:43:53 +0900 [INFO] (main): secret encryption engine: disabled
2019-03-13 13:43:53 +0900 [INFO] (main): XNIO version 3.3.6.Final
2019-03-13 13:43:53 +0900 [INFO] (main): XNIO NIO Implementation Version 3.3.6.Final
2019-03-13 13:43:53 +0900 [INFO] (main): Starting server on 127.0.0.1:65432
2019-03-13 13:43:53 +0900 [INFO] (main): Bound on 127.0.0.1:65432 (api)
2019-03-13 13:44:00 +0900 [INFO] (scheduler-0): Starting a new session project id=1 workflow name=first session_time=2019-03-13T13:00:00+09:00
2019-03-13 13:44:00 +0900 [INFO] (scheduler-0): Updating next schedule time: sched=StoredSchedule{id=1, projectId=1, createdAt=2019-03-13T04:43:56.369Z, updatedAt=2019-03-13T04:43:56.369Z, workflowName=first, workflowDefinitionId=1, nextRunTime=2019-03-13T04:44:00Z, nextScheduleTime=2019-03-13T04:00:00Z}, next=ScheduleTime{runTime=2019-03-13T05:44:00Z, time=2019-03-13T05:00:00Z}, lastSessionTime=2019-03-13T04:00:00Z
2019-03-13 13:44:01 +0900 [INFO] (0027@[0:hoge]+first+require_wf2): require>: second
2019-03-13 13:44:01 +0900 [INFO] (0027@[0:hoge]+first+require_wf2): Starting a new session project id=1 workflow name=second session_time=2019-03-13T13:00:00+09:00
2019-03-13 13:44:03 +0900 [INFO] (0027@[0:hoge]+second+second_task1): echo>: second task1 2019-03-13T13:00:00+09:00
second task1 2019-03-13T13:00:00+09:00
2019-03-13 13:44:03 +0900 [INFO] (0027@[0:hoge]+first+require_wf2): require>: second
2019-03-13 13:44:03 +0900 [INFO] (0027@[0:hoge]+first+first_task1): echo>: first task1 2019-03-13T13:00:00+09:00
first task1 2019-03-13T13:00:00+09:00
``
