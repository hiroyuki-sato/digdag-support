

```yaml
timezone: "Asia/Tokyo"

_export:
  now: ${Date.now()}


+task1:
  echo>: ${now}

+task2:
  echo>: ${now}
```

```
digdag run -a test
2018-10-23 19:22:29 +0900 [INFO] (0017@[0:default]+test+task1): echo>: 1540290149083
1540290149083
2018-10-23 19:22:29 +0900 [INFO] (0017@[0:default]+test+task2): echo>: 1540290149541
1540290149541
```
