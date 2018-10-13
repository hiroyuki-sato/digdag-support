
```yaml
timezone: "Asia/Tokyo"

schedule:
  minutes_interval>: 1


+step1:
  echo>: start schedule ${session_time}

+step2:
  sh>: sleep 30

+step3:
  echo>: finish schedule ${session_time}
```

```
digdag server -m
```

```
digdag push schedule_test
```

### Disable & Enable test

Stop schedule at 14:18:53 

```
digdag disable 1
2018-10-13 14:18:53 +0900: Digdag v0.9.31
Disabled schedule id: 1
```

Confirm schedules

```
digdag schedules
2018-10-13 14:18:57 +0900: Digdag v0.9.31
Schedules:
  id: 1
  project: schedule_test
  workflow: schedule_test
  disabled at: 2018-10-13 14:18:54 +0900 (3s ago)
  next session time: 2018-10-13 14:19:00 +0900
  next scheduled to run at: 2018-10-13 14:19:00 +0900 (in 2s)

1 entries.
Use `digdag workflows [project-name] [name]` to show workflow details.
```

Enable schedule at 14:20:10

```
digdag enable 1
2018-10-13 14:20:10 +0900: Digdag v0.9.31
Enabled schedule id: 1
```

### Server log

Schedule stopped 14:18:53 ~ 14:20:10. So the 14:19 task skipped.



```
2018-10-13 14:16:53 +0900: Digdag v0.9.31
2018-10-13 14:16:55 +0900 [INFO] (main): secret encryption engine: disabled
2018-10-13 14:16:55 +0900 [INFO] (main): XNIO version 3.3.6.Final
2018-10-13 14:16:55 +0900 [INFO] (main): XNIO NIO Implementation Version 3.3.6.Final
2018-10-13 14:16:55 +0900 [INFO] (main): Starting server on 127.0.0.1:65432
2018-10-13 14:16:55 +0900 [INFO] (main): Bound on 127.0.0.1:65432 (api)
2018-10-13 14:18:00 +0900 [INFO] (scheduler-0): Starting a new session project id=1 workflow name=schedule_test session_time=2018-10-13T14:18:00+09:00
2018-10-13 14:18:00 +0900 [INFO] (scheduler-0): Updating next schedule time: sched=StoredSchedule{id=1, projectId=1, createdAt=2018-10-13T05:17:43.341Z, updatedAt=2018-10-13T05:17:43.341Z, workflowName=schedule_test, workflowDefinitionId=1, nextRunTime=2018-10-13T05:18:00Z, nextScheduleTime=2018-10-13T05:18:00Z}, next=ScheduleTime{runTime=2018-10-13T05:19:00Z, time=2018-10-13T05:19:00Z}, lastSessionTime=2018-10-13T05:18:00Z
2018-10-13 14:18:02 +0900 [INFO] (0027@[0:schedule_test]+schedule_test+step1): echo>: start schedule 2018-10-13T14:18:00+09:00
start schedule 2018-10-13T14:18:00+09:00
2018-10-13 14:18:02 +0900 [INFO] (0027@[0:schedule_test]+schedule_test+step2): sh>: sleep 30
2018-10-13 14:18:32 +0900 [INFO] (0027@[0:schedule_test]+schedule_test+step3): echo>: finish schedule 2018-10-13T14:18:00+09:00
finish schedule 2018-10-13T14:18:00+09:00
2018-10-13 14:20:12 +0900 [INFO] (scheduler-0): Starting a new session project id=1 workflow name=schedule_test session_time=2018-10-13T14:19:00+09:00
2018-10-13 14:20:12 +0900 [INFO] (scheduler-0): Updating next schedule time: sched=StoredSchedule{id=1, projectId=1, createdAt=2018-10-13T05:17:43.341Z, updatedAt=2018-10-13T05:20:11.921Z, lastSessionTime=2018-10-13T05:18:00Z, workflowName=schedule_test, workflowDefinitionId=1, nextRunTime=2018-10-13T05:19:00Z, nextScheduleTime=2018-10-13T05:19:00Z}, next=ScheduleTime{runTime=2018-10-13T05:20:00Z, time=2018-10-13T05:20:00Z}, lastSessionTime=2018-10-13T05:19:00Z
2018-10-13 14:20:12 +0900 [INFO] (scheduler-0): Starting a new session project id=1 workflow name=schedule_test session_time=2018-10-13T14:20:00+09:00
2018-10-13 14:20:12 +0900 [INFO] (scheduler-0): Updating next schedule time: sched=StoredSchedule{id=1, projectId=1, createdAt=2018-10-13T05:17:43.341Z, updatedAt=2018-10-13T05:20:12.012Z, lastSessionTime=2018-10-13T05:19:00Z, workflowName=schedule_test, workflowDefinitionId=1, nextRunTime=2018-10-13T05:20:00Z, nextScheduleTime=2018-10-13T05:20:00Z}, next=ScheduleTime{runTime=2018-10-13T05:21:00Z, time=2018-10-13T05:21:00Z}, lastSessionTime=2018-10-13T05:20:00Z
2018-10-13 14:20:12 +0900 [INFO] (0039@[0:schedule_test]+schedule_test+step1): echo>: start schedule 2018-10-13T14:19:00+09:00
start schedule 2018-10-13T14:19:00+09:00
2018-10-13 14:20:12 +0900 [INFO] (0040@[0:schedule_test]+schedule_test+step1): echo>: start schedule 2018-10-13T14:20:00+09:00
start schedule 2018-10-13T14:20:00+09:00
2018-10-13 14:20:12 +0900 [INFO] (0039@[0:schedule_test]+schedule_test+step2): sh>: sleep 30
2018-10-13 14:20:12 +0900 [INFO] (0040@[0:schedule_test]+schedule_test+step2): sh>: sleep 30
2018-10-13 14:20:43 +0900 [INFO] (0039@[0:schedule_test]+schedule_test+step3): echo>: finish schedule 2018-10-13T14:19:00+09:00
finish schedule 2018-10-13T14:19:00+09:00
2018-10-13 14:20:43 +0900 [INFO] (0040@[0:schedule_test]+schedule_test+step3): echo>: finish schedule 2018-10-13T14:20:00+09:00
finish schedule 2018-10-13T14:20:00+09:00
2018-10-13 14:21:00 +0900 [INFO] (scheduler-0): Starting a new session project id=1 workflow name=schedule_test session_time=2018-10-13T14:21:00+09:00
2018-10-13 14:21:00 +0900 [INFO] (scheduler-0): Updating next schedule time: sched=StoredSchedule{id=1, projectId=1, createdAt=2018-10-13T05:17:43.341Z, updatedAt=2018-10-13T05:20:12.035Z, lastSessionTime=2018-10-13T05:20:00Z, workflowName=schedule_test, workflowDefinitionId=1, nextRunTime=2018-10-13T05:21:00Z, nextScheduleTime=2018-10-13T05:21:00Z}, next=ScheduleTime{runTime=2018-10-13T05:22:00Z, time=2018-10-13T05:22:00Z}, lastSessionTime=2018-10-13T05:21:00Z
2018-10-13 14:21:00 +0900 [INFO] (0040@[0:schedule_test]+schedule_test+step1): echo>: start schedule 2018-10-13T14:21:00+09:00
start schedule 2018-10-13T14:21:00+09:00
2018-10-13 14:21:00 +0900 [INFO] (0040@[0:schedule_test]+schedule_test+step2): sh>: sleep 30
^C2018-10-13 14:21:07 +0900 [INFO] (shutdown): Started shutdown process
```
