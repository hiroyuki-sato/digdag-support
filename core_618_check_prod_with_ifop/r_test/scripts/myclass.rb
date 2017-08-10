require 'time'

class MyClass
  def setenv
    Digdag.env.store(is_production: true)
  end

end
