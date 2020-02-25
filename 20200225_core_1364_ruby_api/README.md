
test.conf

```
src_path: "/Users/abc/tools"
```


```
digdag server -m -P test.conf
2020-02-25 12:54:28 +0900: Digdag v0.9.41
2020-02-25 12:54:29 +0900 [INFO] (main): secret encryption engine: disabled
2020-02-25 12:54:30 +0900 [INFO] (main): XNIO version 3.3.6.Final
2020-02-25 12:54:30 +0900 [INFO] (main): XNIO NIO Implementation Version 3.3.6.Final
2020-02-25 12:54:30 +0900 [INFO] (main): Starting server on 127.0.0.1:65432
2020-02-25 12:54:30 +0900 [INFO] (main): Bound on 127.0.0.1:65432 (api)
```

```yaml
timezone: UTC

_export:
  rb:
    require: scripts/myclass

+hoge:
  rb>: MyClass.env_test
```

script/myclass.rb

```ruby
require 'time'
require 'pp'

class MyClass
  def print_time(label:, time:)
    p [label, Time.parse(time)]
  end

  def say_something(order:, animal:)
    puts %Q|#{order} #{animal} said "My favorite number is #{Random.rand(10)}"|
  end

  def env_test
    pp Digdag.env.params
    puts "---> src_path #{Digdag.env.params['src_path']}"
  end
end
```



```
2020-02-25 12:55:00 +0900 [INFO] (XNIO-1 task-7): Starting a new session project id=1 workflow name=test session_time=2020-02-25T03:54:59+00:00
2020-02-25 12:55:01 +0900 [INFO] (0032@[0:hoge]+test+hoge): rb>: MyClass.env_test
{"timezone"=>"UTC",
 "session_uuid"=>"bfab9d2d-a905-4fcb-bec8-3d53c0525f91",
 "session_time"=>"2020-02-25T03:54:59+00:00",
 "session_id"=>1,
 "session_date"=>"2020-02-25",
 "session_date_compact"=>"20200225",
 "session_local_time"=>"2020-02-25 03:54:59",
 "session_tz_offset"=>"+0000",
 "session_unixtime"=>1582602899,
 "last_executed_session_time"=>"",
 "last_executed_session_date"=>"",
 "last_executed_session_date_compact"=>"",
 "last_executed_session_local_time"=>"",
 "last_executed_session_tz_offset"=>"+0000",
 "last_executed_session_unixtime"=>"",
 "project_id"=>1,
 "attempt_id"=>1,
 "task_name"=>"+test+hoge",
 "src_path"=>"/Users/abc/tools",
 "rb"=>{"require"=>"scripts/myclass"},
 "rb>"=>"MyClass.env_test",
 "_type"=>"rb",
 "_command"=>"MyClass.env_test",
 "require"=>"scripts/myclass"}
---> src_path /Users/abc/tools
```


