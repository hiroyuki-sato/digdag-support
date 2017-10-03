
## Launch minio server

```
mkdir /tmp/test/log
```

```
minio server /tmp/test
Endpoint:  http://xxx.xxx.xxx.xxx:9000 http://127.0.0.1:9000
AccessKey: XXXXXXXXXXXXXXXXXXXX
SecretKey: YYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYY
```

## Launch digdag server

```
log-server.type: s3
log-server.s3.endpoint: http://xxx.xxx.xxx.xxx:9000
log-server.s3.bucket: log
log-server.s3.credentials.access-key-id: XXXXXXXXXXXXXXXXXXXX
log-server.s3.credentials.secret-access-key: YYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYY
```


```
digdag server -c test.conf
```
