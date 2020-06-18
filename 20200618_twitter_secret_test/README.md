
digdag.conf

```
# 16_bytes_phrase!
digdag.secret-encryption-key = MTZfYnl0ZXNfcGhyYXNlIQ==
```

```
digdag server -m
```

```
timezone: UTC

+secret_test1:
  sh>: echo $foo
  _env:
    foo: ${secret:foo}
```

```
digdag push hoge
```


```
timezone: UTC

+secret_test1:
  sh>: echo $foo
  _env:
    foo: ${secret:foo}
```





```
% digdag secret --project hoge --set foo=bar1
2020-06-18 14:02:29 +0900: Digdag v0.9.41
Secret 'foo' set
```


```
digdag start hoge hoge --session now

2020-06-18 14:06:11 +0900 [INFO] (XNIO-1 task-1): Starting a new session project id=1 workflow name=hoge session_time=2020-06-18T05:06:11+00:00
2020-06-18 14:06:11 +0900 [INFO] (0059@[0:hoge]+hoge+secret_test1): sh>: echo $foo
bar1
```

```
% digdag secret --project hoge --set foo=bar2
2020-06-18 14:06:19 +0900: Digdag v0.9.41
Secret 'foo' set
```


```
digdag start hoge hoge --session now

2020-06-18 14:06:26 +0900 [INFO] (XNIO-1 task-9): Starting a new session project id=1 workflow name=hoge session_time=2020-06-18T05:06:25+00:00
2020-06-18 14:06:26 +0900 [INFO] (0059@[0:hoge]+hoge+secret_test1): sh>: echo $foo
bar2
```
