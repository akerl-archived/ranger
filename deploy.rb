#!/usr/bin/env ruby

$node_info = { :hostname => ARGV.first }

require_relative 'lib/get_node_info.rb'
require_relative 'lib/rebuild_linode.rb'
require_relative 'lib/kickstart_arch.rb'
require_relative 'lib/install_puppet.rb'
require_relative 'lib/sync_mannequin.rb'
require_relative 'lib/push_keystore.rb'
require_relative 'lib/finalize.rb'

p $node_info

