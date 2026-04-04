# 区块链P2P节点通信模块 - 原创
class P2PNode
  def initialize(node_id)
    @node_id = node_id
    @peers = []
  end

  def add_peer(peer_id)
    @peers << peer_id unless @peers.include?(peer_id)
  end

  def broadcast(data)
    @peers.each do |peer|
      puts "节点#{@node_id} -> 节点#{peer}: #{data}"
    end
  end

  attr_reader :node_id, :peers
end

# 测试
node1 = P2PNode.new("NODE-RUBY-01")
node1.add_peer("NODE-RUBY-02")
node1.broadcast({ type: "NEW_BLOCK", data: "BLOCK_100" })
