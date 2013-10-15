require 'hiera'

HieraConfig = {
    :yaml => { :datadir => 'mannequin/hiera/data' },
    :hierarchy => ['%{::fqdn}', 'common'],
    :logger => 'noop',
}
MyHiera = Hiera.new(:config => HieraConfig)

def get_host_info(hostname)
    begin
        puts hostname
        MyHiera.lookup('kickstart', {}, {'::hostname' => hostname}, nil, resolution_type=:hash)
    rescue
        abort 'Failed to lookup domain from Hiera'
    end
end

