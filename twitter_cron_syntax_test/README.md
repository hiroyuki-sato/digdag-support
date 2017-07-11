
hoge.dig

```
timezone: UTC

schedule:
  cron>: "*/1 * * * *"

+hello:
  sh>: date
```

launch server

```
digdag server -m
2017-07-11 11:25:02 +0900: Digdag v0.9.12
2017-07-11 11:25:03 +0900 [INFO] (main): secret encryption engine: disabled
2017-07-11 11:25:03 +0900 [INFO] (main): XNIO version 3.3.6.Final
2017-07-11 11:25:03 +0900 [INFO] (main): XNIO NIO Implementation Version 3.3.6.Final
2017-07-11 11:25:03 +0900 [INFO] (main): Starting server on 127.0.0.1:65432
2017-07-11 11:25:03 +0900 [INFO] (main): Bound on 127.0.0.1:65432 (api)
```

push project

```
digdag push hoge
2017-07-11 11:26:45 +0900: Digdag v0.9.12
Creating .digdag/tmp/archive-3551602265815225670.tar.gz...
  Archiving hoge.dig
  Archiving scripts/myscript.sh
Workflows:
  hoge.dig
Uploaded:
  id: 1
  name: hoge
  revision: 5ca2e03b-795b-48ca-a4e9-2e2e6baa519c
  archive type: db
  project created at: 2017-07-11T02:26:47Z
  revision updated at: 2017-07-11T02:26:47Z

Use `digdag workflows` to show all workflows.
```

execution log every 1 minutes.

```
2017-07-11 11:27:01 +0900 [INFO] (0027@[0:hoge]+hoge+hello): sh>: date
Tue Jul 11 11:27:01 JST 2017
2017-07-11 11:28:00 +0900 [INFO] (scheduler-0): Starting a new session project id=1 workflow name=hoge session_time=2017-07-11T02:28:00+00:00
2017-07-11 11:28:00 +0900 [INFO] (0027@[0:hoge]+hoge+hello): sh>: date
Tue Jul 11 11:28:00 JST 2017
```
