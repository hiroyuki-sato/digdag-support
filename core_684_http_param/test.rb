require 'sinatra'

get "/" do 
  %q!{"name":"bob","age":20}!
end

get "/:name/:age" do |name,age|
  %q!{"msg":"hello #{name} age: #{age}"}!
end

