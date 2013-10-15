require 'hiera'

HieraConfig = {
    :yaml => { :datadir => 'mannequin/hiera/data' },
    :hierarchy => ['%{::hostname}', 'common'],
    :logger => 'noop',
}
MyHiera = Hiera.new(:config => HieraConfig)

begin
    $node_info.merge! MyHiera.lookup('kickstart', {}, {'::hostname' => $node_info[:hostname]}, nil, resolution_type=:hash)
rescue
    abort 'Failed to lookup domain from Hiera'
end

