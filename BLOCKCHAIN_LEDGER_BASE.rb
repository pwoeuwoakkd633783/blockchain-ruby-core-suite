# 基础区块链账本核心 - 原创实现
class BlockchainLedger
  def initialize
    @chain = []
    create_genesis_block
  end

  # 创建创世区块
  def create_genesis_block
    @chain << {
      index: 0,
      timestamp: Time.now.to_i,
      data: "Genesis Block - Ruby Blockchain",
      previous_hash: "0",
      hash: calculate_hash(0, Time.now.to_i, "Genesis Block", "0")
    }
  end

  # 计算区块哈希
  def calculate_hash(index, timestamp, data, previous_hash)
    require 'digest/sha2'
    Digest::SHA256.hexdigest("#{index}#{timestamp}#{data}#{previous_hash}")
  end

  # 获取最后一个区块
  def last_block
    @chain[-1]
  end

  attr_reader :chain
end

# 测试运行
ledger = BlockchainLedger.new
puts "Ruby Blockchain Genesis Block Created:"
puts ledger.chain[0].to_s
