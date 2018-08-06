digdag server -m -O /tmp/digdag_log

```
digdag push hoge
2018-08-06 16:55:07 +0900: Digdag v0.9.27
Creating /path/to/digdag-support/twitter_digdag_log/.digdag/tmp/archive-2248158901033158914.tar.gz...
  Archiving README.md
  Archiving scripts/myscript.sh
  Archiving hoge.dig
Workflows:
  hoge.dig
Uploaded:
  id: 1
  name: hoge
  revision: 4ac5b9e5-698d-443b-82e3-420dd2ca23a7
  archive type: db
  project created at: 2018-08-06T07:55:09Z
  revision updated at: 2018-08-06T07:55:09Z

Use `digdag workflows` to show all workflows.
```


```
digdag start hoge hoge --session now
```

OK

```
% digdag log 1 +hoge+repeat^sub+for-0=order=0=
2018-08-06 16:56:20 +0900: Digdag v0.9.27
2018-08-06 16:55:49.518 +0900 [INFO] (0032@[0:hoge]+hoge+repeat^sub+for-0=order=0=%7B%22hoge%22%3A) io.digdag.core.agent.OperatorManager: sh>: scripts/myscript.sh {"hoge":"hoge"}
{hoge:hoge} said "I'm using Darwin mac 17.7.0 Darwin Kernel Version 17.7.0: Thu Jun 21 22:53:14 PDT 2018; root:xnu-4570.71.2~1/RELEASE_X86_64 x86_64"
```

NG

```
% digdag log 1 +hoge+repeat^sub+for-0=order=0=%7B

```
