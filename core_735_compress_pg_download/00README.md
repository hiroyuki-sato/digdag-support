```yaml
_export:
  pg:
    database: database
    host: localhost
    user: user

+step1:
  sh>: pwd
    
+step2:
  pg>: test.sql
  download_file: test.csv

+step3:
  sh>: pwd

+step4:
  sh>: find ../.. -print

+step5:
  sh>: "( cd ../pg_download+step2* ; gzip test.csv )"

```

Execute `digdag start hoge pg_download --session now`

```
2018-03-07 17:49:09 +0900 [INFO] (XNIO-1 task-17): Starting a new session project id=1 workflow name=pg_download session_time=2018-03-07T08:49:08+00:00
2018-03-07 17:49:09 +0900 [INFO] (0093@[0:hoge]+pg_download+step1): sh>: pwd
/private/var/folders/3s/5cm202m95zsglpy26c6_7j9m0000gn/T/digdag-tempdir7939627408511968766/workspace/+pg_download+step1_5017835461922634732
2018-03-07 17:49:09 +0900 [INFO] (0093@[0:hoge]+pg_download+step2): pg>: test.sql
2018-03-07 17:49:10 +0900 [INFO] (0093@[0:hoge]+pg_download+step3): sh>: pwd
/private/var/folders/3s/5cm202m95zsglpy26c6_7j9m0000gn/T/digdag-tempdir7939627408511968766/workspace/+pg_download+step3_679464285711392244
2018-03-07 17:49:10 +0900 [INFO] (0093@[0:hoge]+pg_download+step4): sh>: find ../.. -print
../..
../../workspace
../../workspace/+pg_download+step4_3696883520727877754
../../workspace/+pg_download+step4_3696883520727877754/test.sql
../../workspace/+pg_download+step4_3696883520727877754/pg_download.dig
../../workspace/+pg_download+step4_3696883520727877754/test.dig
../../push
2018-03-07 17:49:10 +0900 [INFO] (0093@[0:hoge]+pg_download+step5): sh>: ( cd ../pg_download+step2* ; gzip test.csv )
/bin/sh: line 1: cd: ../pg_download+step2*: No such file or directory
gzip: can't stat: test.csv (test.csv): No such file or directory
2018-03-07 17:49:10 +0900 [ERROR] (0093@[0:hoge]+pg_download+step5): Task failed with unexpected error: Command failed with code 1
```
