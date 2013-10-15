#!/usr/bin/env ruby

require_relative 'lib/get_node_info.rb'

Hostname = ARGV.first || abort('Please provide a hostname')
NodeInfo = get_host_info(Hostname)

p NodeInfo

