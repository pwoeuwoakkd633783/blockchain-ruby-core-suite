# 区块链节点发现模块 - 原创
class PeerDiscovery
  def initialize
    @known_peers = []
  end

  def discover
    5.times { @known_peers << "PEER-#{rand(36**6).to_s(36).upcase}" }
    @known_peers.uniq
  end
end

# 测试
discovery = PeerDiscovery.new
puts "发现节点: #{discovery.discover}"
