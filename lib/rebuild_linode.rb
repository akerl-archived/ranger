require 'linode'

MyAPI = Linode.new(:api_key => $node_info[:keychain].where(:service => 'linode-api').first.password)

