## 

```
.
|-- README.md
|-- common
|   `-- subdir.dig
`-- test.dig

1 directory, 3 files
```

test.dig

```yaml
+hello:
  echo>: hello

+call_test:
  call>: common/subdir.dig
```

common/subidr.dig

```yaml
timezone: UTC

+setup:
  echo>: start ${session_time}

+disp_current_date:
  echo>: ${moment(session_time).utc().format('YYYY-MM-DD HH:mm:ss Z')}

+repeat:
  for_each>:
    order: [first, second, third]
    animal: [dog, cat]
  _do:
    echo>: ${order} ${animal}
  _parallel: true

+teardown:
  echo>: finish ${session_time}
```




```
2017-12-26 13:21:40 +0900: Digdag v0.9.21
2017-12-26 13:21:41 +0900 [WARN] (main): Using a new session time 2017-12-26T00:00:00+00:00.
2017-12-26 13:21:41 +0900 [INFO] (main): Using session /path/to/digdag-support/twitter_call_in_subdir/.digdag/status/20171226T000000+0000.
2017-12-26 13:21:41 +0900 [INFO] (main): Starting a new session project id=1 workflow name=test session_time=2017-12-26T00:00:00+00:00
2017-12-26 13:21:43 +0900 [INFO] (0017@[0:default]+test+hello): echo>: hello
hello
2017-12-26 13:21:43 +0900 [INFO] (0017@[0:default]+test+call_test): call>: common/subdir.dig
2017-12-26 13:21:43 +0900 [INFO] (0017@[0:default]+test+call_test^sub+setup): echo>: start 2017-12-26T00:00:00+00:00
start 2017-12-26T00:00:00+00:00
2017-12-26 13:21:44 +0900 [INFO] (0017@[0:default]+test+call_test^sub+disp_current_date): echo>: 2017-12-26 00:00:00 +00:00
2017-12-26 00:00:00 +00:00
2017-12-26 13:21:44 +0900 [INFO] (0017@[0:default]+test+call_test^sub+repeat): for_each>: {order=[first, second, third], animal=[dog, cat]}
2017-12-26 13:21:45 +0900 [INFO] (0023@[0:default]+test+call_test^sub+repeat^sub+for-0=order=2=third&1=animal=0=dog): echo>: third dog
third dog
2017-12-26 13:21:45 +0900 [INFO] (0022@[0:default]+test+call_test^sub+repeat^sub+for-0=order=1=second&1=animal=1=cat): echo>: second cat
second cat
2017-12-26 13:21:45 +0900 [INFO] (0020@[0:default]+test+call_test^sub+repeat^sub+for-0=order=0=first&1=animal=1=cat): echo>: first cat
first cat
2017-12-26 13:21:45 +0900 [INFO] (0017@[0:default]+test+call_test^sub+repeat^sub+for-0=order=0=first&1=animal=0=dog): echo>: first dog
first dog
2017-12-26 13:21:45 +0900 [INFO] (0024@[0:default]+test+call_test^sub+repeat^sub+for-0=order=2=third&1=animal=1=cat): echo>: third cat
third cat
2017-12-26 13:21:45 +0900 [INFO] (0021@[0:default]+test+call_test^sub+repeat^sub+for-0=order=1=second&1=animal=0=dog): echo>: second dog
second dog
2017-12-26 13:21:45 +0900 [INFO] (0021@[0:default]+test+call_test^sub+teardown): echo>: finish 2017-12-26T00:00:00+00:00
finish 2017-12-26T00:00:00+00:00
Success. Task state is saved at /path/to/digdag-support/twitter_call_in_subdir/.digdag/status/20171226T000000+0000 directory.
  * Use --session <daily | hourly | "yyyy-MM-dd[ HH:mm:ss]"> to not reuse the last session time.
  * Use --rerun, --start +NAME, or --goal +NAME argument to rerun skipped tasks.
```
