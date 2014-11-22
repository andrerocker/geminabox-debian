require "geminabox"

Geminabox.data = "/tmp/geminabox"
Geminabox.rubygems_proxy = true

run Geminabox::Server
