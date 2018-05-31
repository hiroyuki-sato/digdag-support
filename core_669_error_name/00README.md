```
digdag server -m -c digdag.conf
```

```
digdag push hoge
digdag start hoge echo --session now
```

```
cat /tmp/aaa.txt
/path/to/digdag-support/core_669_error_namehsato-mbp13
```

```json
{
  "timestamp": "2018-05-31T13:07:26Z",
  "message": "Workflow session attempt failed",
  "site_id": 0,
  "project_id": 1,
  "project_name": "hoge",
  "workflow_name": "echo",
  "revision": "fcaaeb96-d6a9-4e04-b408-bea1aa5af43d",
  "attempt_id": 1,
  "session_id": 1,
  "task_name": "+echo^failure-alert",
  "timezone": "UTC",
  "session_uuid": "a00392a1-f239-45db-a5bb-23c4076463c3",
  "session_time": "2018-05-31T13:07:23+00:00"
}
```
