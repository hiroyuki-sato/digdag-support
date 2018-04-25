## 

[Proposal to fix redshift and pg operator store_last_results](https://github.com/treasure-data/digdag/issues/717) test.

```
embulk_test=# select * from users;
     name     |           mail           |  birthday
--------------+--------------------------+------------
 sample_user1 | sample_user1@example.com |
 sample_user2 | sample_user2@example.com |
 sample_user2 | sample_user2@example.com |
 sample_user1 | sample_user1@example.com | 1980-01-01
 sample_user2 | sample_user2@example.com | 1000-01-01
 sample_user2 | sample_user2@example.com | 0100-01-01
(6 rows)
```

```
digdag run -a pg_store_test
2018-04-25 09:29:46 +0900: Digdag v0.9.24
2018-04-25 09:29:48 +0900 [WARN] (main): Reusing the last session time 2018-04-25T00:00:00+00:00.
2018-04-25 09:29:48 +0900 [INFO] (main): Using session /pat/to/digdag-support/core_717_pg_store_test/.digdag/status/20180425T000000+0000.
2018-04-25 09:29:48 +0900 [INFO] (main): Starting a new session project id=1 workflow name=pg_store_test session_time=2018-04-25T00:00:00+00:00
2018-04-25 09:29:49 +0900 [INFO] (0017@[0:default]+pg_store_test+select_members): pg>: select_members.sql
2018-04-25 09:29:50 +0900 [INFO] (0017@[0:default]+pg_store_test+echo): for_each>: {member=[{"mail":"sample_user1@example.com"},{"mail":"sample_user2@example.com"},{"mail":"sample_user2@example.com"},{"mail":"sample_user1@example.com"},{"mail":"sample_user2@example.com"},{"mail":"sample_user2@example.com"}]}
2018-04-25 09:29:50 +0900 [INFO] (0017@[0:default]+pg_store_test+echo^sub+for-0=member=0=%7B%22mail%22%3A): echo>: member sample_user1@example.com
member sample_user1@example.com
2018-04-25 09:29:50 +0900 [INFO] (0017@[0:default]+pg_store_test+echo^sub+for-0=member=1=%7B%22mail%22%3A): echo>: member sample_user2@example.com
member sample_user2@example.com
2018-04-25 09:29:51 +0900 [INFO] (0017@[0:default]+pg_store_test+echo^sub+for-0=member=2=%7B%22mail%22%3A): echo>: member sample_user2@example.com
member sample_user2@example.com
2018-04-25 09:29:51 +0900 [INFO] (0017@[0:default]+pg_store_test+echo^sub+for-0=member=3=%7B%22mail%22%3A): echo>: member sample_user1@example.com
member sample_user1@example.com
2018-04-25 09:29:51 +0900 [INFO] (0017@[0:default]+pg_store_test+echo^sub+for-0=member=4=%7B%22mail%22%3A): echo>: member sample_user2@example.com
member sample_user2@example.com
2018-04-25 09:29:51 +0900 [INFO] (0017@[0:default]+pg_store_test+echo^sub+for-0=member=5=%7B%22mail%22%3A): echo>: member sample_user2@example.com
member sample_user2@example.com
Success. Task state is saved at /pat/to/digdag-support/core_717_pg_store_test/.digdag/status/20180425T000000+0000 directory.
  * Use --session <daily | hourly | "yyyy-MM-dd[ HH:mm:ss]"> to not reuse the last session time.
  * Use --rerun, --start +NAME, or --goal +NAME argument to rerun skipped tasks.
```
