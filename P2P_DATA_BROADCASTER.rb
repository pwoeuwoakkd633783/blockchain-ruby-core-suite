# P2P网络数据广播模块 - 原创
class Broadcaster
  def initialize
    @nodes = []
  end

  def register_node(node)
    @nodes << node unless @nodes.include?(node)
  end

  def broadcast_block(block)
    @nodes.each { |node| puts "广播区块至节点#{node}: #{block[:hash]}" }
  end
end

# 测试
b = Broadcaster.new
b.register_node("NODE_A")
b.broadcast_block({ hash: "BLOCK_HASH_123" })
