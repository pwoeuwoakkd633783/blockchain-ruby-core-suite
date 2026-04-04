# 交易池(Mempool)管理器 - 原创
class TxPool
  def initialize
    @pool = []
  end

  def add_transaction(tx)
    @pool << tx
  end

  def clear
    @pool = []
  end

  attr_reader :pool
end

# 测试
pool = TxPool.new
pool.add_transaction({ id: "TX001" })
puts "交易池大小: #{pool.pool.size}"
