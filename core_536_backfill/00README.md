
```
timezone: Asia/Tokyo

schedule:
  minutes_interval>: 1
  skip_delayed_by: 30s

+say_hello:
  echo>: start ${session_time}
```


```
2018-06-04 10:37:24 +0900: Digdag v0.9.25
2018-06-04 10:37:25 +0900 [INFO] (main): secret encryption engine: disabled
2018-06-04 10:37:25 +0900 [INFO] (main): XNIO version 3.3.6.Final
2018-06-04 10:37:25 +0900 [INFO] (main): XNIO NIO Implementation Version 3.3.6.Final
2018-06-04 10:37:25 +0900 [INFO] (main): Starting server on 127.0.0.1:65432
2018-06-04 10:37:25 +0900 [INFO] (main): Bound on 127.0.0.1:65432 (api)
2018-06-04 10:38:00 +0900 [INFO] (scheduler-0): Starting a new session project id=1 workflow name=backfill session_time=2018-06-04T10:38:00+09:00
2018-06-04 10:38:00 +0900 [INFO] (scheduler-0): Updating next schedule time: sched=StoredSchedule{id=1, projectId=1, createdAt=2018-06-04T01:37:39.319Z, updatedAt=2018-06-04T01:37:39.319Z, workflowName=backfill, workflowDefinitionId=1, nextRunTime=2018-06-04T01:38:00Z, nextScheduleTime=2018-06-04T01:38:00Z}, next=ScheduleTime{runTime=2018-06-04T01:39:00Z, time=2018-06-04T01:39:00Z}, lastSessionTime=2018-06-04T01:38:00Z
2018-06-04 10:38:02 +0900 [INFO] (0029@[0:hoge]+backfill+say_hello): echo>: start 2018-06-04T10:38:00+09:00
start 2018-06-04T10:38:00+09:00
2018-06-04 10:39:00 +0900 [INFO] (scheduler-0): Starting a new session project id=1 workflow name=backfill session_time=2018-06-04T10:39:00+09:00
2018-06-04 10:39:00 +0900 [INFO] (scheduler-0): Updating next schedule time: sched=StoredSchedule{id=1, projectId=1, createdAt=2018-06-04T01:37:39.319Z, updatedAt=2018-06-04T01:38:00.920Z, lastSessionTime=2018-06-04T01:38:00Z, workflowName=backfill, workflowDefinitionId=1, nextRunTime=2018-06-04T01:39:00Z, nextScheduleTime=2018-06-04T01:39:00Z}, next=ScheduleTime{runTime=2018-06-04T01:40:00Z, time=2018-06-04T01:40:00Z}, lastSessionTime=2018-06-04T01:39:00Z
2018-06-04 10:39:00 +0900 [INFO] (0029@[0:hoge]+backfill+say_hello): echo>: start 2018-06-04T10:39:00+09:00
start 2018-06-04T10:39:00+09:00
^C2018-06-04 10:39:32 +0900 [INFO] (shutdown): Started shutdown process
2018-06-04 10:39:32 +0900 [INFO] (shutdown): Shutting down workflow executor loop
2018-06-04 10:39:32 +0900 [INFO] (shutdown): Closing HTTP listening sockets
2018-06-04 10:39:32 +0900 [INFO] (shutdown): Waiting for completion of running HTTP requests...
2018-06-04 10:39:32 +0900 [INFO] (shutdown): Shutting down HTTP worker threads
2018-06-04 10:39:32 +0900 [INFO] (shutdown): Shutting down system
2018-06-04 10:39:32 +0900 [INFO] (shutdown): Shutdown completed
```

I stopped digdag until 10:53:53. After restart digdag, backfill session created `start 2018-06-04T10:54:00+09:00` only.


```
hsato-mbp13:core_536_backfill hsato$ digdag server -c ./digdag.conf
2018-06-04 10:53:53 +0900: Digdag v0.9.25
2018-06-04 10:53:54 +0900 [INFO] (main): secret encryption engine: disabled
2018-06-04 10:53:54 +0900 [INFO] (main): XNIO version 3.3.6.Final
2018-06-04 10:53:54 +0900 [INFO] (main): XNIO NIO Implementation Version 3.3.6.Final
2018-06-04 10:53:54 +0900 [INFO] (main): Starting server on 127.0.0.1:65432
2018-06-04 10:53:54 +0900 [INFO] (main): Bound on 127.0.0.1:65432 (api)
2018-06-04 10:53:55 +0900 [INFO] (scheduler-0): Now=2018-06-04T01:53:55.786Z is too late from scheduled time=2018-06-04T01:40:00Z. It's over skip_delayed_by=30s. Skipping this schedule: StoredSchedule{id=1, projectId=1, createdAt=2018-06-04T01:37:39.319Z, updatedAt=2018-06-04T01:39:00.171Z, lastSessionTime=2018-06-04T01:39:00Z, workflowName=backfill, workflowDefinitionId=1, nextRunTime=2018-06-04T01:40:00Z, nextScheduleTime=2018-06-04T01:40:00Z}
2018-06-04 10:53:55 +0900 [INFO] (scheduler-0): Updating next schedule time: sched=StoredSchedule{id=1, projectId=1, createdAt=2018-06-04T01:37:39.319Z, updatedAt=2018-06-04T01:39:00.171Z, lastSessionTime=2018-06-04T01:39:00Z, workflowName=backfill, workflowDefinitionId=1, nextRunTime=2018-06-04T01:40:00Z, nextScheduleTime=2018-06-04T01:40:00Z}, next=ScheduleTime{runTime=2018-06-04T01:41:00Z, time=2018-06-04T01:41:00Z}, lastSessionTime=null
2018-06-04 10:53:55 +0900 [INFO] (scheduler-0): Now=2018-06-04T01:53:55.786Z is too late from scheduled time=2018-06-04T01:41:00Z. It's over skip_delayed_by=30s. Skipping this schedule: StoredSchedule{id=1, projectId=1, createdAt=2018-06-04T01:37:39.319Z, updatedAt=2018-06-04T01:53:55.882Z, lastSessionTime=2018-06-04T01:39:00Z, workflowName=backfill, workflowDefinitionId=1, nextRunTime=2018-06-04T01:41:00Z, nextScheduleTime=2018-06-04T01:41:00Z}
2018-06-04 10:53:55 +0900 [INFO] (scheduler-0): Updating next schedule time: sched=StoredSchedule{id=1, projectId=1, createdAt=2018-06-04T01:37:39.319Z, updatedAt=2018-06-04T01:53:55.882Z, lastSessionTime=2018-06-04T01:39:00Z, workflowName=backfill, workflowDefinitionId=1, nextRunTime=2018-06-04T01:41:00Z, nextScheduleTime=2018-06-04T01:41:00Z}, next=ScheduleTime{runTime=2018-06-04T01:42:00Z, time=2018-06-04T01:42:00Z}, lastSessionTime=null
2018-06-04 10:53:55 +0900 [INFO] (scheduler-0): Now=2018-06-04T01:53:55.786Z is too late from scheduled time=2018-06-04T01:42:00Z. It's over skip_delayed_by=30s. Skipping this schedule: StoredSchedule{id=1, projectId=1, createdAt=2018-06-04T01:37:39.319Z, updatedAt=2018-06-04T01:53:55.889Z, lastSessionTime=2018-06-04T01:39:00Z, workflowName=backfill, workflowDefinitionId=1, nextRunTime=2018-06-04T01:42:00Z, nextScheduleTime=2018-06-04T01:42:00Z}
2018-06-04 10:53:55 +0900 [INFO] (scheduler-0): Updating next schedule time: sched=StoredSchedule{id=1, projectId=1, createdAt=2018-06-04T01:37:39.319Z, updatedAt=2018-06-04T01:53:55.889Z, lastSessionTime=2018-06-04T01:39:00Z, workflowName=backfill, workflowDefinitionId=1, nextRunTime=2018-06-04T01:42:00Z, nextScheduleTime=2018-06-04T01:42:00Z}, next=ScheduleTime{runTime=2018-06-04T01:43:00Z, time=2018-06-04T01:43:00Z}, lastSessionTime=null
2018-06-04 10:53:55 +0900 [INFO] (scheduler-0): Now=2018-06-04T01:53:55.786Z is too late from scheduled time=2018-06-04T01:43:00Z. It's over skip_delayed_by=30s. Skipping this schedule: StoredSchedule{id=1, projectId=1, createdAt=2018-06-04T01:37:39.319Z, updatedAt=2018-06-04T01:53:55.895Z, lastSessionTime=2018-06-04T01:39:00Z, workflowName=backfill, workflowDefinitionId=1, nextRunTime=2018-06-04T01:43:00Z, nextScheduleTime=2018-06-04T01:43:00Z}
2018-06-04 10:53:55 +0900 [INFO] (scheduler-0): Updating next schedule time: sched=StoredSchedule{id=1, projectId=1, createdAt=2018-06-04T01:37:39.319Z, updatedAt=2018-06-04T01:53:55.895Z, lastSessionTime=2018-06-04T01:39:00Z, workflowName=backfill, workflowDefinitionId=1, nextRunTime=2018-06-04T01:43:00Z, nextScheduleTime=2018-06-04T01:43:00Z}, next=ScheduleTime{runTime=2018-06-04T01:44:00Z, time=2018-06-04T01:44:00Z}, lastSessionTime=null
2018-06-04 10:53:55 +0900 [INFO] (scheduler-0): Now=2018-06-04T01:53:55.786Z is too late from scheduled time=2018-06-04T01:44:00Z. It's over skip_delayed_by=30s. Skipping this schedule: StoredSchedule{id=1, projectId=1, createdAt=2018-06-04T01:37:39.319Z, updatedAt=2018-06-04T01:53:55.905Z, lastSessionTime=2018-06-04T01:39:00Z, workflowName=backfill, workflowDefinitionId=1, nextRunTime=2018-06-04T01:44:00Z, nextScheduleTime=2018-06-04T01:44:00Z}
2018-06-04 10:53:55 +0900 [INFO] (scheduler-0): Updating next schedule time: sched=StoredSchedule{id=1, projectId=1, createdAt=2018-06-04T01:37:39.319Z, updatedAt=2018-06-04T01:53:55.905Z, lastSessionTime=2018-06-04T01:39:00Z, workflowName=backfill, workflowDefinitionId=1, nextRunTime=2018-06-04T01:44:00Z, nextScheduleTime=2018-06-04T01:44:00Z}, next=ScheduleTime{runTime=2018-06-04T01:45:00Z, time=2018-06-04T01:45:00Z}, lastSessionTime=null
2018-06-04 10:53:55 +0900 [INFO] (scheduler-0): Now=2018-06-04T01:53:55.786Z is too late from scheduled time=2018-06-04T01:45:00Z. It's over skip_delayed_by=30s. Skipping this schedule: StoredSchedule{id=1, projectId=1, createdAt=2018-06-04T01:37:39.319Z, updatedAt=2018-06-04T01:53:55.912Z, lastSessionTime=2018-06-04T01:39:00Z, workflowName=backfill, workflowDefinitionId=1, nextRunTime=2018-06-04T01:45:00Z, nextScheduleTime=2018-06-04T01:45:00Z}
2018-06-04 10:53:55 +0900 [INFO] (scheduler-0): Updating next schedule time: sched=StoredSchedule{id=1, projectId=1, createdAt=2018-06-04T01:37:39.319Z, updatedAt=2018-06-04T01:53:55.912Z, lastSessionTime=2018-06-04T01:39:00Z, workflowName=backfill, workflowDefinitionId=1, nextRunTime=2018-06-04T01:45:00Z, nextScheduleTime=2018-06-04T01:45:00Z}, next=ScheduleTime{runTime=2018-06-04T01:46:00Z, time=2018-06-04T01:46:00Z}, lastSessionTime=null
2018-06-04 10:53:55 +0900 [INFO] (scheduler-0): Now=2018-06-04T01:53:55.786Z is too late from scheduled time=2018-06-04T01:46:00Z. It's over skip_delayed_by=30s. Skipping this schedule: StoredSchedule{id=1, projectId=1, createdAt=2018-06-04T01:37:39.319Z, updatedAt=2018-06-04T01:53:55.920Z, lastSessionTime=2018-06-04T01:39:00Z, workflowName=backfill, workflowDefinitionId=1, nextRunTime=2018-06-04T01:46:00Z, nextScheduleTime=2018-06-04T01:46:00Z}
2018-06-04 10:53:55 +0900 [INFO] (scheduler-0): Updating next schedule time: sched=StoredSchedule{id=1, projectId=1, createdAt=2018-06-04T01:37:39.319Z, updatedAt=2018-06-04T01:53:55.920Z, lastSessionTime=2018-06-04T01:39:00Z, workflowName=backfill, workflowDefinitionId=1, nextRunTime=2018-06-04T01:46:00Z, nextScheduleTime=2018-06-04T01:46:00Z}, next=ScheduleTime{runTime=2018-06-04T01:47:00Z, time=2018-06-04T01:47:00Z}, lastSessionTime=null
2018-06-04 10:53:55 +0900 [INFO] (scheduler-0): Now=2018-06-04T01:53:55.786Z is too late from scheduled time=2018-06-04T01:47:00Z. It's over skip_delayed_by=30s. Skipping this schedule: StoredSchedule{id=1, projectId=1, createdAt=2018-06-04T01:37:39.319Z, updatedAt=2018-06-04T01:53:55.925Z, lastSessionTime=2018-06-04T01:39:00Z, workflowName=backfill, workflowDefinitionId=1, nextRunTime=2018-06-04T01:47:00Z, nextScheduleTime=2018-06-04T01:47:00Z}
2018-06-04 10:53:55 +0900 [INFO] (scheduler-0): Updating next schedule time: sched=StoredSchedule{id=1, projectId=1, createdAt=2018-06-04T01:37:39.319Z, updatedAt=2018-06-04T01:53:55.925Z, lastSessionTime=2018-06-04T01:39:00Z, workflowName=backfill, workflowDefinitionId=1, nextRunTime=2018-06-04T01:47:00Z, nextScheduleTime=2018-06-04T01:47:00Z}, next=ScheduleTime{runTime=2018-06-04T01:48:00Z, time=2018-06-04T01:48:00Z}, lastSessionTime=null
2018-06-04 10:53:55 +0900 [INFO] (scheduler-0): Now=2018-06-04T01:53:55.786Z is too late from scheduled time=2018-06-04T01:48:00Z. It's over skip_delayed_by=30s. Skipping this schedule: StoredSchedule{id=1, projectId=1, createdAt=2018-06-04T01:37:39.319Z, updatedAt=2018-06-04T01:53:55.930Z, lastSessionTime=2018-06-04T01:39:00Z, workflowName=backfill, workflowDefinitionId=1, nextRunTime=2018-06-04T01:48:00Z, nextScheduleTime=2018-06-04T01:48:00Z}
2018-06-04 10:53:55 +0900 [INFO] (scheduler-0): Updating next schedule time: sched=StoredSchedule{id=1, projectId=1, createdAt=2018-06-04T01:37:39.319Z, updatedAt=2018-06-04T01:53:55.930Z, lastSessionTime=2018-06-04T01:39:00Z, workflowName=backfill, workflowDefinitionId=1, nextRunTime=2018-06-04T01:48:00Z, nextScheduleTime=2018-06-04T01:48:00Z}, next=ScheduleTime{runTime=2018-06-04T01:49:00Z, time=2018-06-04T01:49:00Z}, lastSessionTime=null
2018-06-04 10:53:55 +0900 [INFO] (scheduler-0): Now=2018-06-04T01:53:55.786Z is too late from scheduled time=2018-06-04T01:49:00Z. It's over skip_delayed_by=30s. Skipping this schedule: StoredSchedule{id=1, projectId=1, createdAt=2018-06-04T01:37:39.319Z, updatedAt=2018-06-04T01:53:55.935Z, lastSessionTime=2018-06-04T01:39:00Z, workflowName=backfill, workflowDefinitionId=1, nextRunTime=2018-06-04T01:49:00Z, nextScheduleTime=2018-06-04T01:49:00Z}
2018-06-04 10:53:55 +0900 [INFO] (scheduler-0): Updating next schedule time: sched=StoredSchedule{id=1, projectId=1, createdAt=2018-06-04T01:37:39.319Z, updatedAt=2018-06-04T01:53:55.935Z, lastSessionTime=2018-06-04T01:39:00Z, workflowName=backfill, workflowDefinitionId=1, nextRunTime=2018-06-04T01:49:00Z, nextScheduleTime=2018-06-04T01:49:00Z}, next=ScheduleTime{runTime=2018-06-04T01:50:00Z, time=2018-06-04T01:50:00Z}, lastSessionTime=null
2018-06-04 10:53:55 +0900 [INFO] (scheduler-0): Now=2018-06-04T01:53:55.786Z is too late from scheduled time=2018-06-04T01:50:00Z. It's over skip_delayed_by=30s. Skipping this schedule: StoredSchedule{id=1, projectId=1, createdAt=2018-06-04T01:37:39.319Z, updatedAt=2018-06-04T01:53:55.940Z, lastSessionTime=2018-06-04T01:39:00Z, workflowName=backfill, workflowDefinitionId=1, nextRunTime=2018-06-04T01:50:00Z, nextScheduleTime=2018-06-04T01:50:00Z}
2018-06-04 10:53:55 +0900 [INFO] (scheduler-0): Updating next schedule time: sched=StoredSchedule{id=1, projectId=1, createdAt=2018-06-04T01:37:39.319Z, updatedAt=2018-06-04T01:53:55.940Z, lastSessionTime=2018-06-04T01:39:00Z, workflowName=backfill, workflowDefinitionId=1, nextRunTime=2018-06-04T01:50:00Z, nextScheduleTime=2018-06-04T01:50:00Z}, next=ScheduleTime{runTime=2018-06-04T01:51:00Z, time=2018-06-04T01:51:00Z}, lastSessionTime=null
2018-06-04 10:53:55 +0900 [INFO] (scheduler-0): Now=2018-06-04T01:53:55.786Z is too late from scheduled time=2018-06-04T01:51:00Z. It's over skip_delayed_by=30s. Skipping this schedule: StoredSchedule{id=1, projectId=1, createdAt=2018-06-04T01:37:39.319Z, updatedAt=2018-06-04T01:53:55.944Z, lastSessionTime=2018-06-04T01:39:00Z, workflowName=backfill, workflowDefinitionId=1, nextRunTime=2018-06-04T01:51:00Z, nextScheduleTime=2018-06-04T01:51:00Z}
2018-06-04 10:53:55 +0900 [INFO] (scheduler-0): Updating next schedule time: sched=StoredSchedule{id=1, projectId=1, createdAt=2018-06-04T01:37:39.319Z, updatedAt=2018-06-04T01:53:55.944Z, lastSessionTime=2018-06-04T01:39:00Z, workflowName=backfill, workflowDefinitionId=1, nextRunTime=2018-06-04T01:51:00Z, nextScheduleTime=2018-06-04T01:51:00Z}, next=ScheduleTime{runTime=2018-06-04T01:52:00Z, time=2018-06-04T01:52:00Z}, lastSessionTime=null
2018-06-04 10:53:55 +0900 [INFO] (scheduler-0): Now=2018-06-04T01:53:55.786Z is too late from scheduled time=2018-06-04T01:52:00Z. It's over skip_delayed_by=30s. Skipping this schedule: StoredSchedule{id=1, projectId=1, createdAt=2018-06-04T01:37:39.319Z, updatedAt=2018-06-04T01:53:55.948Z, lastSessionTime=2018-06-04T01:39:00Z, workflowName=backfill, workflowDefinitionId=1, nextRunTime=2018-06-04T01:52:00Z, nextScheduleTime=2018-06-04T01:52:00Z}
2018-06-04 10:53:55 +0900 [INFO] (scheduler-0): Updating next schedule time: sched=StoredSchedule{id=1, projectId=1, createdAt=2018-06-04T01:37:39.319Z, updatedAt=2018-06-04T01:53:55.948Z, lastSessionTime=2018-06-04T01:39:00Z, workflowName=backfill, workflowDefinitionId=1, nextRunTime=2018-06-04T01:52:00Z, nextScheduleTime=2018-06-04T01:52:00Z}, next=ScheduleTime{runTime=2018-06-04T01:53:00Z, time=2018-06-04T01:53:00Z}, lastSessionTime=null
2018-06-04 10:53:55 +0900 [INFO] (scheduler-0): Now=2018-06-04T01:53:55.786Z is too late from scheduled time=2018-06-04T01:53:00Z. It's over skip_delayed_by=30s. Skipping this schedule: StoredSchedule{id=1, projectId=1, createdAt=2018-06-04T01:37:39.319Z, updatedAt=2018-06-04T01:53:55.953Z, lastSessionTime=2018-06-04T01:39:00Z, workflowName=backfill, workflowDefinitionId=1, nextRunTime=2018-06-04T01:53:00Z, nextScheduleTime=2018-06-04T01:53:00Z}
2018-06-04 10:53:55 +0900 [INFO] (scheduler-0): Updating next schedule time: sched=StoredSchedule{id=1, projectId=1, createdAt=2018-06-04T01:37:39.319Z, updatedAt=2018-06-04T01:53:55.953Z, lastSessionTime=2018-06-04T01:39:00Z, workflowName=backfill, workflowDefinitionId=1, nextRunTime=2018-06-04T01:53:00Z, nextScheduleTime=2018-06-04T01:53:00Z}, next=ScheduleTime{runTime=2018-06-04T01:54:00Z, time=2018-06-04T01:54:00Z}, lastSessionTime=null
2018-06-04 10:54:01 +0900 [INFO] (scheduler-0): Starting a new session project id=1 workflow name=backfill session_time=2018-06-04T10:54:00+09:00
2018-06-04 10:54:01 +0900 [INFO] (scheduler-0): Updating next schedule time: sched=StoredSchedule{id=1, projectId=1, createdAt=2018-06-04T01:37:39.319Z, updatedAt=2018-06-04T01:53:55.958Z, lastSessionTime=2018-06-04T01:39:00Z, workflowName=backfill, workflowDefinitionId=1, nextRunTime=2018-06-04T01:54:00Z, nextScheduleTime=2018-06-04T01:54:00Z}, next=ScheduleTime{runTime=2018-06-04T01:55:00Z, time=2018-06-04T01:55:00Z}, lastSessionTime=2018-06-04T01:54:00Z
2018-06-04 10:54:02 +0900 [INFO] (0027@[0:hoge]+backfill+say_hello): echo>: start 2018-06-04T10:54:00+09:00
start 2018-06-04T10:54:00+09:00
^C2018-06-04 10:54:17 +0900 [INFO] (shutdown): Started shutdown process
2018-06-04 10:54:17 +0900 [INFO] (shutdown): Shutting down workflow executor loop
2018-06-04 10:54:17 +0900 [INFO] (shutdown): Closing HTTP listening sockets
2018-06-04 10:54:17 +0900 [INFO] (shutdown): Waiting for completion of running HTTP requests...
2018-06-04 10:54:17 +0900 [INFO] (shutdown): Shutting down HTTP worker threads
2018-06-04 10:54:17 +0900 [INFO] (shutdown): Shutting down system
2018-06-04 10:54:17 +0900 [INFO] (shutdown): Shutdown completed
```
