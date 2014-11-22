require "yaml"
require "geminabox"

config = YAML.load_file(File.expand_path("config/geminabox.yml"))

Geminabox.data = config["data"]
Geminabox.rubygems_proxy = config["proxy"]

run Geminabox::Server
