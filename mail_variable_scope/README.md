
```yaml
timezone: "Asia/Tokyo"

_export:
  rb:
    require: 'test/var'

+step1:
  _export:
    hoge: 10

  +step1_1:
    _export:
      hoge: 20

    +step1_1_1:
      echo>: ${hoge} # out 20

  +step1_2:
    echo>: ${hoge} # out 10

+step2:
  _export:
    hoge: 10

  +step2_1:
    echo>: ${hoge} # out 10

  +step2_2:
    rb>: VarTest.test # hoge replace 30

  +step2_3:
    echo>: ${hoge} # out 30

+step3:
  echo>: ${hoge} # out 30
```


```
digdag run -a test.dig
2018-10-22 09:23:32 +0900: Digdag v0.9.31
2018-10-22 09:23:33 +0900 [WARN] (main): Reusing the last session time 2018-10-22T00:00:00+09:00.
2018-10-22 09:23:33 +0900 [INFO] (main): Using session /digdag-support/mail_variable_scope/.digdag/status/20181022T000000+0900.
2018-10-22 09:23:33 +0900 [INFO] (main): Starting a new session project id=1 workflow name=test session_time=2018-10-22T00:00:00+09:00
2018-10-22 09:23:34 +0900 [INFO] (0017@[0:default]+test+step1+step1_1+step1_1_1): echo>: 20
20
2018-10-22 09:23:35 +0900 [INFO] (0017@[0:default]+test+step1+step1_2): echo>: 10
10
2018-10-22 09:23:35 +0900 [INFO] (0017@[0:default]+test+step2+step2_1): echo>: 10
10
2018-10-22 09:23:35 +0900 [INFO] (0017@[0:default]+test+step2+step2_2): rb>: VarTest.test
2018-10-22 09:23:36 +0900 [INFO] (0017@[0:default]+test+step2+step2_3): echo>: 30
30
2018-10-22 09:23:36 +0900 [INFO] (0017@[0:default]+test+step3): echo>: 30
30
Success. Task state is saved at /Users/hsato/OpenProjects/digdag/digdag-support/mail_variable_scope/.digdag/status/20181022T000000+0900 directory.
  * Use --session <daily | hourly | "yyyy-MM-dd[ HH:mm:ss]"> to not reuse the last session time.
  * Use --rerun, --start +NAME, or --goal +NAME argument to rerun skipped tasks.
```
