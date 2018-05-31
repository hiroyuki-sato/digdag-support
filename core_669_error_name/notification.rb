#! /usr/bin/env ruby
# coding: UTF-8

File.write("/tmp/aaa.txt",Dir.pwd)
#unless STDIN.tty?
#  print STDERR.puts STDIN.read
  File.write("/tmp/error.log", STDIN.read)
#end

