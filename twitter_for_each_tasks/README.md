
```yaml
timezone: UTC

+repeat:
  for_each>:
    order: [first, second, third]
    animal: [dog, cat]
  _do:
    +task1:
      echo>: task1 ${order} ${animal}

    +task2:
      echo>: task2 ${order} ${animal}

  _parallel: false

+task3:
  echo>: task3
```

```
digdag run -a hoge.dig
2017-12-07 19:57:41 +0900: Digdag v0.9.21
2017-12-07 19:57:42 +0900 [WARN] (main): Reusing the last session time 2017-12-07T00:00:00+00:00.
2017-12-07 19:57:42 +0900 [INFO] (main): Using session /path/to/digdag/digdag/digdag-support/twitter_for_each_tasks/.digdag/status/20171207T000000+0000.
2017-12-07 19:57:42 +0900 [INFO] (main): Starting a new session project id=1 workflow name=hoge session_time=2017-12-07T00:00:00+00:00
2017-12-07 19:57:43 +0900 [INFO] (0017@[0:default]+hoge+repeat): for_each>: {order=[first, second, third], animal=[dog, cat]}
2017-12-07 19:57:44 +0900 [INFO] (0017@[0:default]+hoge+repeat^sub+for-0=order=0=first&1=animal=0=dog+task1): echo>: task1 first dog
task1 first dog
2017-12-07 19:57:44 +0900 [INFO] (0017@[0:default]+hoge+repeat^sub+for-0=order=0=first&1=animal=0=dog+task2): echo>: task2 first dog
task2 first dog
2017-12-07 19:57:45 +0900 [INFO] (0017@[0:default]+hoge+repeat^sub+for-0=order=0=first&1=animal=1=cat+task1): echo>: task1 first cat
task1 first cat
2017-12-07 19:57:45 +0900 [INFO] (0017@[0:default]+hoge+repeat^sub+for-0=order=0=first&1=animal=1=cat+task2): echo>: task2 first cat
task2 first cat
2017-12-07 19:57:45 +0900 [INFO] (0017@[0:default]+hoge+repeat^sub+for-0=order=1=second&1=animal=0=dog+task1): echo>: task1 second dog
task1 second dog
2017-12-07 19:57:45 +0900 [INFO] (0017@[0:default]+hoge+repeat^sub+for-0=order=1=second&1=animal=0=dog+task2): echo>: task2 second dog
task2 second dog
2017-12-07 19:57:46 +0900 [INFO] (0017@[0:default]+hoge+repeat^sub+for-0=order=1=second&1=animal=1=cat+task1): echo>: task1 second cat
task1 second cat
2017-12-07 19:57:46 +0900 [INFO] (0017@[0:default]+hoge+repeat^sub+for-0=order=1=second&1=animal=1=cat+task2): echo>: task2 second cat
task2 second cat
2017-12-07 19:57:46 +0900 [INFO] (0017@[0:default]+hoge+repeat^sub+for-0=order=2=third&1=animal=0=dog+task1): echo>: task1 third dog
task1 third dog
2017-12-07 19:57:46 +0900 [INFO] (0017@[0:default]+hoge+repeat^sub+for-0=order=2=third&1=animal=0=dog+task2): echo>: task2 third dog
task2 third dog
2017-12-07 19:57:46 +0900 [INFO] (0017@[0:default]+hoge+repeat^sub+for-0=order=2=third&1=animal=1=cat+task1): echo>: task1 third cat
task1 third cat
2017-12-07 19:57:47 +0900 [INFO] (0017@[0:default]+hoge+repeat^sub+for-0=order=2=third&1=animal=1=cat+task2): echo>: task2 third cat
task2 third cat
2017-12-07 19:57:47 +0900 [INFO] (0017@[0:default]+hoge+task3): echo>: task3
task3
Success. Task state is saved at /path/to/digdag/digdag/digdag-support/twitter_for_each_tasks/.digdag/status/20171207T000000+0000 directory.
  * Use --session <daily | hourly | "yyyy-MM-dd[ HH:mm:ss]"> to not reuse the last session time.
  * Use --rerun, --start +NAME, or --goal +NAME argument to rerun skipped tasks.
```
