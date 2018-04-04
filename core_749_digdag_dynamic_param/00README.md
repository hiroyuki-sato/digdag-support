## Separate environment parameters.

Based on this article

* [Digdagで環境毎に設定値を変えたい時のTips](https://iroilog.net/2017/09/digdag-params-tips/)


```yaml
+test:
  echo>: "PostgreSQL host ${pg.host}"
```

config file for development. (`dev.yml`)

```
pg:
  host: dev
  port: 5432
  database: development_db
  user: development_user
  ssl: true
  schema: myschema
```

config file for production (`prod.yml`)

```
pg:
  host: production
  port: 5432
  database: production_db
  user: production_user
  ssl: true
  schema: myschema
```

## launch daemon for production

```
digdag server -m --params-file prod.yml
```

```
2018-04-04 21:13:39 +0900 [INFO] (main): secret encryption engine: disabled
2018-04-04 21:13:39 +0900 [INFO] (main): XNIO version 3.3.6.Final
2018-04-04 21:13:39 +0900 [INFO] (main): XNIO NIO Implementation Version 3.3.6.F##
inal
2018-04-04 21:13:39 +0900 [INFO] (main): Starting server on 127.0.0.1:65432
2018-04-04 21:13:39 +0900 [INFO] (main): Bound on 127.0.0.1:65432 (api)
2018-04-04 21:13:47 +0900 [INFO] (XNIO-1 task-7): Starting a new session project id=1 workflow name=test session_time=2018-04-04T12:13:47+00:00
2018-04-04 21:13:49 +0900 [INFO] (0032@[0:hoge]+test+test): echo>: PostgreSQL host production
PostgreSQL host production
```

## launch daemon for development

```
digdag server -m --params-file dev.yml
```


```
2018-04-04 21:13:11 +0900 [INFO] (main): secret encryption engine: disabled
2018-04-04 21:13:11 +0900 [INFO] (main): XNIO version 3.3.6.Final
2018-04-04 21:13:11 +0900 [INFO] (main): XNIO NIO Implementation Version 3.3.6.Final
2018-04-04 21:13:11 +0900 [INFO] (main): Starting server on 127.0.0.1:65432
2018-04-04 21:13:11 +0900 [INFO] (main): Bound on 127.0.0.1:65432 (api)
2018-04-04 21:13:23 +0900 [INFO] (XNIO-1 task-7): Starting a new session project id=1 workflow name=test session_time=2018-04-04T12:13:23+00:00
2018-04-04 21:13:24 +0900 [INFO] (0032@[0:hoge]+test+test): echo>: PostgreSQL host dev
PostgreSQL host dev
```
