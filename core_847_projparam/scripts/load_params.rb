require 'yaml'
require 'pp'
class LoadParams
  def load
    conf = YAML.load_file("env_params.yml")
    conf[Digdag.env.params["digdag_env"]].each do |k,v|
      Digdag.env.store[k] = v
    end
  end

end
