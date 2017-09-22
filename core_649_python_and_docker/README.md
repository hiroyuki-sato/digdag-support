## Summary

* [FileNotFoundError occurs in python operator in docker](https://github.com/treasure-data/digdag/issues/649)

## File layout

```
.
|-- README.md
|-- python-with-docker.dig
`-- scripts
    |-- __init__.py
    `-- myclass.py
```

## Server mode test

* Digdag: 0.9.16
* Docker: 17.06.2-ce, build cec0b72
* OS: Ubuntu 17.04
* Java: 8u131-b11-2ubuntu1.17.04.3

```
2017-09-23 00:06:29 +0900: Digdag v0.9.16
2017-09-23 00:06:30 +0900 [INFO] (main): secret encryption engine: disabled
2017-09-23 00:06:31 +0900 [INFO] (main): XNIO version 3.3.6.Final
2017-09-23 00:06:31 +0900 [INFO] (main): XNIO NIO Implementation Version 3.3.6.Final
2017-09-23 00:06:31 +0900 [INFO] (main): Starting server on 127.0.0.1:65432
2017-09-23 00:06:31 +0900 [INFO] (main): Bound on 127.0.0.1:65432 (api)
2017-09-23 00:07:13 +0900 [INFO] (XNIO-1 task-7): Starting a new session project id=1 workflow name=python-with-docker session_time=2017-09-22T00:00:00+00:00
2017-09-23 00:07:14 +0900 [INFO] (0032@[0:test]+python-with-docker+print_python_version): sh>: python --version
Unable to find image 'python:3' locally
3: Pulling from library/python
aa18ad1a0d33: Pulling fs layer
15a33158a136: Pulling fs layer
f67323742a64: Pulling fs layer
c4b45e832c38: Pulling fs layer
b71152c33fd2: Pulling fs layer
d8eff2a5d585: Pulling fs layer
f80b3bd3dbda: Pulling fs layer
e5b3e7f65920: Pulling fs layer
d8eff2a5d585: Waiting
c4b45e832c38: Waiting
f80b3bd3dbda: Waiting
b71152c33fd2: Waiting
e5b3e7f65920: Waiting
15a33158a136: Verifying Checksum
15a33158a136: Download complete
f67323742a64: Verifying Checksum
f67323742a64: Download complete
b71152c33fd2: Verifying Checksum
b71152c33fd2: Download complete
aa18ad1a0d33: Verifying Checksum
aa18ad1a0d33: Download complete
f80b3bd3dbda: Verifying Checksum
f80b3bd3dbda: Download complete
aa18ad1a0d33: Pull complete
15a33158a136: Pull complete
f67323742a64: Pull complete
e5b3e7f65920: Verifying Checksum
e5b3e7f65920: Download complete
d8eff2a5d585: Verifying Checksum
d8eff2a5d585: Download complete
c4b45e832c38: Verifying Checksum
c4b45e832c38: Download complete
c4b45e832c38: Pull complete
b71152c33fd2: Pull complete
d8eff2a5d585: Pull complete
f80b3bd3dbda: Pull complete
e5b3e7f65920: Pull complete
Digest: sha256:2cbebfb9309a8b7b31c2fea8813436e297855f91cedd9cc28582678da905e5e0
Status: Downloaded newer image for python:3
Python 3.6.2
2017-09-23 00:08:48 +0900 [INFO] (0032@[0:test]+python-with-docker+hello): py>: scripts.myclass.MyClass.hello
hello world
```


## Local mode test

### Environment

* Digdag: 0.9.16
* Docker: 17.06.2-ce, build cec0b72
* OS: CentOS7
* Java: java-1.8.0-openjdk-headless-1.8.0.144-0.b01.el7_4.x86_64


## test results

```
digdag run python-with-docker
217-09-22 19:26:15 +0900: Digdag v0.9.16
217-09-22 19:26:17 +0900 [WARN] (main): Reusing the last session time 2017-09-22T00:00:00+00:00.
217-09-22 19:26:17 +0900 [INFO] (main): Using session /path/to/digdag_project/.digdag/status/20170922T000000+0000.
217-09-22 19:26:17 +0900 [INFO] (main): Starting a new session project id=1 workflow name=python-with-docker session_time=2017-09-22T00:00:00+00:00
217-09-22 19:26:17 +0900 [WARN] (0016@[0:default]+python-with-docker+print_python_version): Skipped
217-09-22 19:26:17 +0900 [WARN] (0016@[0:default]+python-with-docker+hello): Skipped
Sucess. Task state is saved at /path/to/digdag_project/.digdag/status/20170922T000000+0000 directory.
 * Use --session <daily | hourly | "yyyy-MM-dd[ HH:mm:ss]"> to not reuse the last session time.
 * Use --rerun, --start +NAME, or --goal +NAME argument to rerun skipped tasks.
$ ~/bin/digdag run -a python-with-docker
217-09-22 19:26:28 +0900: Digdag v0.9.16
217-09-22 19:26:30 +0900 [WARN] (main): Reusing the last session time 2017-09-22T00:00:00+00:00.
217-09-22 19:26:30 +0900 [INFO] (main): Using session /path/to/digdag_project/.digdag/status/20170922T000000+0000.
217-09-22 19:26:30 +0900 [INFO] (main): Starting a new session project id=1 workflow name=python-with-docker session_time=2017-09-22T00:00:00+00:00
217-09-22 19:26:32 +0900 [INFO] (0016@[0:default]+python-with-docker+print_python_version): sh>: python --version
Unble to find image 'python:3' locally
: Pulling from library/python
a18ad1a0d33: Pulling fs layer
1533158a136: Pulling fs layer
f6723742a64: Pulling fs layer
4b45e832c38: Pulling fs layer
b7115233fd2: Pulling fs layer
8eff2a5d585: Pulling fs layer
f8b3bd3dbda: Pulling fs layer
e5be7f65920: Pulling fs layer
4b45e832c38: Waiting
8eff2a5d585: Waiting
b7115233fd2: Waiting
f8b3bd3dbda: Waiting
e5be7f65920: Waiting
1533158a136: Verifying Checksum
1533158a136: Download complete
f6723742a64: Verifying Checksum
f6723742a64: Download complete
b7115233fd2: Verifying Checksum
b7115233fd2: Download complete
a18ad1a0d33: Verifying Checksum
a18ad1a0d33: Download complete
f8b3bd3dbda: Verifying Checksum
f8b3bd3dbda: Download complete
8eff2a5d585: Verifying Checksum
8eff2a5d585: Download complete
e5be7f65920: Verifying Checksum
e5be7f65920: Download complete
4b45e832c38: Verifying Checksum
4b45e832c38: Download complete
a18ad1a0d33: Pull complete
1533158a136: Pull complete
f6723742a64: Pull complete
4b45e832c38: Pull complete
b7115233fd2: Pull complete
8eff2a5d585: Pull complete
f8b3bd3dbda: Pull complete
e5be7f65920: Pull complete
Dgest: sha256:2cbebfb9309a8b7b31c2fea8813436e297855f91cedd9cc28582678da905e5e0
Sttus: Downloaded newer image for python:3
Pyton 3.6.2
217-09-22 19:27:13 +0900 [INFO] (0016@[0:default]+python-with-docker+hello): py>: scripts.myclass.MyClass.hello
ello world
Sucess. Task state is saved at /path/to/digdag_project/.digdag/status/20170922T000000+0000 directory.
 * Use --session <daily | hourly | "yyyy-MM-dd[ HH:mm:ss]"> to not reuse the last session time.
 * Use --rerun, --start +NAME, or --goal +NAME argument to rerun skipped tasks.
```

