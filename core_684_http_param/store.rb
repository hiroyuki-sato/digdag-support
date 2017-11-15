require 'json'

class MyWorkflow
  def step1
    http_result = JSON.parse(Digdag.env.params['http']['last_content'])

    Digdag.env.store(age: http_result['age'])
    Digdag.env.store(name: http_result['name'])
  end

  def step2
    http_result = JSON.parse(Digdag.env.params['http']['last_content'])

    Digdag.env.store(msg: http_result['msg'])
  end
end

