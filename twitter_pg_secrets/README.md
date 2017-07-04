```
digdag server -c postgresql.conf
2017-07-04 22:04:49 +0900: Digdag v0.9.12
2017-07-04 22:04:51 +0900 [INFO] (main): secret encryption engine: aesgcm
2017-07-04 22:04:51 +0900 [INFO] (main): XNIO version 3.3.6.Final
2017-07-04 22:04:51 +0900 [INFO] (main): XNIO NIO Implementation Version 3.3.6.Final
2017-07-04 22:04:51 +0900 [INFO] (main): Starting server on 127.0.0.1:65432
2017-07-04 22:04:51 +0900 [INFO] (main): Bound on 127.0.0.1:65432 (api)
```

```
database.type = postgresql
database.user = digdag
#database.password = passwd
database.host = 127.0.0.1
database.port = 5432
database.database = digdag_support
digdag.secret-encryption-key = dGVzdDEyMzR0ZXN0MTIzNA==
```
