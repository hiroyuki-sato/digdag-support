## Environment

* Digdag: 0.9.16
* OS: CentOS7
* Java: java-1.8.0-openjdk-headless-1.8.0.144-0.b01.el7_4.x86_64
* Digdag server -m on memory mode.
* Memory: 16GB
* model name	: Intel(R) Pentium(R) CPU 1403 @ 2.60GHz (lscpu)

## CPU load test


```
digdag server -m
2017-09-22 20:23:17 +0900: Digdag v0.9.16
2017-09-22 20:23:18 +0900 [INFO] (main): secret encryption engine: disabled
2017-09-22 20:23:19 +0900 [INFO] (main): XNIO version 3.3.6.Final
2017-09-22 20:23:19 +0900 [INFO] (main): XNIO NIO Implementation Version 3.3.6.Final
2017-09-22 20:23:19 +0900 [INFO] (main): Starting server on 127.0.0.1:65432
2017-09-22 20:23:19 +0900 [INFO] (main): Bound on 127.0.0.1:65432 (api)
2017-09-22 20:24:00 +0900 [INFO] (scheduler-0): Starting a new session project id=1 workflow name=echo_cpu_test session_time=2017-09-22T11:24:00+00:00
2017-09-22 20:24:03 +0900 [INFO] (0024@[0:.]+echo_cpu_test+setup): echo>: start 2017-09-22T11:24:00+00:00
start 2017-09-22T11:24:00+00:00
2017-09-22 20:24:03 +0900 [INFO] (0024@[0:.]+echo_cpu_test+disp_current_date): echo>: 2017-09-22 11:24:00 +00:00
2017-09-22 11:24:00 +00:00
2017-09-22 20:24:04 +0900 [INFO] (0024@[0:.]+echo_cpu_test+repeat): for_each>: {order=[first, second, third], animal=[dog, cat]}
2017-09-22 20:24:05 +0900 [INFO] (0024@[0:.]+echo_cpu_test+repeat^sub+for-0=order=0=first&1=animal=0=dog): echo>: first dog
first dog
2017-09-22 20:24:05 +0900 [INFO] (0027@[0:.]+echo_cpu_test+repeat^sub+for-0=order=1=second&1=animal=0=dog): echo>: second dog
second dog
2017-09-22 20:24:05 +0900 [INFO] (0028@[0:.]+echo_cpu_test+repeat^sub+for-0=order=1=second&1=animal=1=cat): echo>: second cat
second cat
2017-09-22 20:24:05 +0900 [INFO] (0026@[0:.]+echo_cpu_test+repeat^sub+for-0=order=0=first&1=animal=1=cat): echo>: first cat
first cat
2017-09-22 20:24:05 +0900 [INFO] (0029@[0:.]+echo_cpu_test+repeat^sub+for-0=order=2=third&1=animal=0=dog): echo>: third dog
third dog
2017-09-22 20:24:05 +0900 [INFO] (0030@[0:.]+echo_cpu_test+repeat^sub+for-0=order=2=third&1=animal=1=cat): echo>: third cat
third cat
2017-09-22 20:24:07 +0900 [INFO] (0030@[0:.]+echo_cpu_test+teardown): echo>: finish 2017-09-22T11:24:00+00:00
finish 2017-09-22T11:24:00+00:00
2017-09-22 20:25:00 +0900 [INFO] (scheduler-0): Starting a new session project id=1 workflow name=echo_cpu_test session_time=2017-09-22T11:25:00+00:00
2017-09-22 20:25:01 +0900 [INFO] (0030@[0:.]+echo_cpu_test+setup): echo>: start 2017-09-22T11:25:00+00:00
start 2017-09-22T11:25:00+00:00
2017-09-22 20:25:01 +0900 [INFO] (0030@[0:.]+echo_cpu_test+disp_current_date): echo>: 2017-09-22 11:25:00 +00:00
2017-09-22 11:25:00 +00:00
2017-09-22 20:25:01 +0900 [INFO] (0030@[0:.]+echo_cpu_test+repeat): for_each>: {order=[first, second, third], animal=[dog, cat]}
2017-09-22 20:25:03 +0900 [INFO] (0030@[0:.]+echo_cpu_test+repeat^sub+for-0=order=0=first&1=animal=0=dog): echo>: first dog
first dog
2017-09-22 20:25:03 +0900 [INFO] (0026@[0:.]+echo_cpu_test+repeat^sub+for-0=order=1=second&1=animal=1=cat): echo>: second cat
2017-09-22 20:25:03 +0900 [INFO] (0029@[0:.]+echo_cpu_test+repeat^sub+for-0=order=0=first&1=animal=1=cat): echo>: first cat
second cat
first cat
2017-09-22 20:25:03 +0900 [INFO] (0028@[0:.]+echo_cpu_test+repeat^sub+for-0=order=1=second&1=animal=0=dog): echo>: second dog
second dog
2017-09-22 20:25:03 +0900 [INFO] (0024@[0:.]+echo_cpu_test+repeat^sub+for-0=order=2=third&1=animal=1=cat): echo>: third cat
third cat
2017-09-22 20:25:03 +0900 [INFO] (0027@[0:.]+echo_cpu_test+repeat^sub+for-0=order=2=third&1=animal=0=dog): echo>: third dog
third dog
2017-09-22 20:25:03 +0900 [INFO] (0027@[0:.]+echo_cpu_test+teardown): echo>: finish 2017-09-22T11:25:00+00:00
finish 2017-09-22T11:25:00+00:00
^C2017-09-22 20:25:19 +0900 [INFO] (shutdown): Started shutdown process
2017-09-22 20:25:19 +0900 [INFO] (shutdown): Shutting down workflow executor loop
2017-09-22 20:25:19 +0900 [INFO] (shutdown): Closing HTTP listening sockets
2017-09-22 20:25:19 +0900 [INFO] (shutdown): Waiting for completion of running HTTP requests...
2017-09-22 20:25:19 +0900 [INFO] (shutdown): Shutting down HTTP worker threads
2017-09-22 20:25:19 +0900 [INFO] (shutdown): Shutting down system
2017-09-22 20:25:19 +0900 [INFO] (shutdown): Shutdown completed
```


```
vmstat 2
procs -----------memory---------- ---swap-- -----io---- -system-- ------cpu-----
 r  b   swpd   free   buff  cache   si   so    bi    bo   in   cs us sy id wa st
 0  0   5792 3672644    948 8201868    0    0    41    70    4   18  1  3 95  0  0
 0  0   5792 3672644    948 8201908    0    0     0     8 2566 5370  2  3 95  0  0
 0  0   5792 3671372    948 8201908    0    0     0     0 2592 5385  3  4 93  0  0
 0  0   5792 3669324    948 8201920    0    0     0    32 2594 5430  2  3 95  0  0
 4  0   5792 3669324    948 8201920    0    0     0     8 2585 5264  2  3 95  0  0
 1  0   5792 3657504    948 8201920    0    0     0     0 2981 5845  8  6 86  0  0
 2  0   5792 3613416    948 8201932    0    0     0    12 4685 8050 69  5 27  0  0 <-- Run task
 7  0   5792 3467476    948 8201952    0    0     0     0 4520 6824 84  5 12  0  0 <-- Run task
 0  0   5792 3465336    948 8201928    0    0     0    42 3169 5738 25  4 71  0  0
 0  0   5792 3465336    948 8201928    0    0     0    10 2586 5361  2  3 95  0  0
 0  0   5792 3465336    948 8201928    0    0     0     0 2688 5495  2  4 95  0  0
 0  0   5792 3465336    948 8201928    0    0     0     8 2647 5530  2  3 95  0  0
 0  0   5792 3465336    948 8201928    0    0     0     0 2603 5433  2  3 96  0  0
 0  0   5792 3465212    948 8201928    0    0     0     0 2615 5406  2  3 95  0  0
 0  0   5792 3465088    948 8201928    0    0     0     8 2625 5428  3  3 94  0  0
 0  0   5792 3465088    948 8201928    0    0     0    70 2619 5548  2  3 95  0  0
 0  0   5792 3465088    948 8201928    0    0     0     8 2601 5520  1  3 96  0  0
 0  0   5792 3464700    948 8201960    0    0     0     0 2644 5446  3  4 93  0  0
 0  0   5792 3464700    948 8201960    0    0     0     0 2609 5394  2  3 95  0  0
 0  0   5792 3464700    948 8201960    0    0     0     8 2613 5523  2  4 95  0  0
 0  0   5792 3464700    948 8201960    0    0     0    40 2628 5522  1  3 96  0  0
 0  0   5792 3464700    948 8201960    0    0     0     8 2604 5460  2  3 95  0  0
procs -----------memory---------- ---swap-- -----io---- -system-- ------cpu-----
 r  b   swpd   free   buff  cache   si   so    bi    bo   in   cs us sy id wa st
 0  0   5792 3464700    948 8201960    0    0     0     0 2612 5533  2  4 95  0  0
 0  0   5792 3464700    948 8201960    0    0     0   156 2638 5498  2  4 95  0  0
 0  0   5792 3464700    948 8201960    0    0     0     8 2600 5433  1  3 96  0  0
 0  0   5792 3464668    948 8201960    0    0     0     0 2663 5621  2  3 95  0  0
 0  0   5792 3464668    948 8201960    0    0     0     8 2616 5402  2  3 94  0  0
 0  0   5792 3464668    948 8201960    0    0     0     0 2634 5369  1  3 95  0  0
 0  0   5792 3464636    948 8201960    0    0     0     0 2642 5456  2  3 95  0  0
 0  0   5792 3464636    948 8201960    0    0     0     8 2604 5434  2  4 94  0  0
 0  0   5792 3464636    948 8201960    0    0     0     0 2637 5440  2  3 95  0  0
 0  0   5792 3464636    948 8201960    0    0     0     8 2596 5458  2  3 95  0  0
 0  0   5792 3464604    948 8201960    0    0     0     0 2611 5348  2  3 95  0  0
 0  0   5792 3464604    948 8201972    0    0     0     0 2598 5485  2  3 95  0  0
 0  0   5792 3464604    948 8201972    0    0     0     8 2617 5517  2  3 95  0  0
 2  0   5792 3434692    948 8201976    0    0     0     0 3179 5680 28  3 69  0  0 <-- Run task
 0  0   5792 3212336    948 8201976    0    0     0    22 4475 6062 80  6 14  0  0 <-- Run task
 0  0   5792 3212212    948 8201972    0    0     0     0 2638 5339  2  3 94  0  0
 0  0   5792 3212056    948 8201972    0    0     0    37 2632 5560  2  3 96  0  0
 0  0   5792 3212056    948 8201972    0    0     0    24 2596 5482  1  3 96  0  0
 1  0   5792 3212056    948 8201972    0    0     0     0 2629 5582  2  3 95  0  0
 0  0   5792 3213964    948 8201972    0    0     0     8 2603 5503  1  3 95  0  0
 0  0   5792 3213964    948 8201972    0    0     0     0 2584 5478  2  3 95  0  0
 0  0   5792 3213996    948 8201972    0    0     0     0 2670 5562  2  3 95  0  0
procs -----------memory---------- ---swap-- -----io---- -system-- ------cpu-----
 r  b   swpd   free   buff  cache   si   so    bi    bo   in   cs us sy id wa st
 0  0   5792 3886380    948 8201936    0    0     0     8 2693 5515  3  5 93  0  0 <-- Stop digdag
 0  0   5792 3886380    948 8201936    0    0     0    70 2546 4954  2  4 94  0  0 
 0  0   5792 3886348    948 8201936    0    0     0     0 2566 5356  1  3 95  0  0
 0  0   5792 3886224    948 8201936    0    0     0     0 2604 5394  2  4 94  0  0
 1  0   5792 3886224    948 8201936    0    0     0     0 2552 5370  1  3 96  0  0
 0  0   5792 3886224    948 8201936    0    0     0     0 2544 5435  1  3 96  0  0
 0  0   5792 3886224    948 8201936    0    0     0     0 2574 5456  1  3 95  0  0
 0  0   5792 3886224    948 8201936    0    0     0     0 2585 5346  1  3 96  0  0
 0  0   5792 3886224    948 8201936    0    0     0     0 2562 5418  1  3 96  0  0
 0  0   5792 3886224    948 8201936    0    0     0    19 2587 5440  1  4 95  0  0
```
