# Web3-Ruby基础连接器 - 原创
class Web3Connector
  def initialize(rpc_url)
    @rpc = rpc_url
  end

  def connect
    { status: "connected", rpc: @rpc, chain_id: rand(1..100) }
  end
end

# 测试
connector = Web3Connector.new("https://rubychain-rpc.com")
puts connector.connect
