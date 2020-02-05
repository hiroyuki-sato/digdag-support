

## start server

```
% export AWS_ACCESS_KEY_ID=test
% digdag server -m
2020-02-05 17:45:18 +0900: Digdag v0.9.41
2020-02-05 17:45:20 +0900 [INFO] (main): secret encryption engine: disabled
2020-02-05 17:45:20 +0900 [INFO] (main): XNIO version 3.3.6.Final
2020-02-05 17:45:20 +0900 [INFO] (main): XNIO NIO Implementation Version 3.3.6.Final
2020-02-05 17:45:20 +0900 [INFO] (main): Starting server on 127.0.0.1:65432
2020-02-05 17:45:20 +0900 [INFO] (main): Bound on 127.0.0.1:65432 (api)
```

## push project

```
digdag push pram_test
digdag start pram_test test --session now
```

## start workflow

```
digdag start pram_test test --session now
```

server log output the following

```
2020-02-05 17:45:41 +0900 [INFO] (XNIO-1 task-7): Starting a new session project id=1 workflow name=test session_time=2020-02-05T17:45:41+09:00
2020-02-05 17:45:42 +0900 [INFO] (0032@[0:pram_test]+test+task1): sh>: ./env_test.sh
** test ** <-- OK
...

2020-02-05 17:45:43 +0900 [INFO] (0032@[0:pram_test]+test+task2): sh>: env
CAML_LD_LIBRARY_PATH=/Users/hsato/.opam/system/lib/stublibs:/usr/local/lib/ocaml/stublibs
timezone=Asia/Tokyo
...
AWS_ACCESS_KEY_ID=test <-- OK
...
```


