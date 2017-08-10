
```yaml
timezone: UTC

_export:
  rb:
    require: scripts/myclass

+setup:
  rb>: MyClass.setenv

+step2:
  sh>: echo ${is_production}

+step3:
  if>: ${is_production}

  _do:
    echo>: This is production!!
```

if `is_production` is `false`.

```
digdag run -a r_test.dig
...
2017-08-10 22:00:15 +0900 [INFO] (0017@[0:default]+r_test+setup): rb>: MyClass.setenv
2017-08-10 22:00:16 +0900 [INFO] (0017@[0:default]+r_test+step2): sh>: echo false
false
2017-08-10 22:00:16 +0900 [INFO] (0017@[0:default]+r_test+step3): if>: false
...
```

if `is_production` is `true`.

```
2017-08-10 22:01:42 +0900: Digdag v0.9.13
2017-08-10 22:01:43 +0900 [WARN] (main): Reusing the last session time 2017-08-10T00:00:00+00:00.
...
2017-08-10 22:01:44 +0900 [INFO] (0017@[0:default]+r_test+setup): rb>: MyClass.setenv
2017-08-10 22:01:45 +0900 [INFO] (0017@[0:default]+r_test+step2): sh>: echo true
true
2017-08-10 22:01:45 +0900 [INFO] (0017@[0:default]+r_test+step3): if>: true
2017-08-10 22:01:46 +0900 [INFO] (0017@[0:default]+r_test+step3^sub): echo>: This is production!!
This is production!!
```
