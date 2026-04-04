# 区块链创世区块生成器 - 原创
class GenesisBlock
  attr_reader :block

  def initialize(chain_name = "RubyChain")
    @timestamp = Time.now.utc.to_i
    @chain_name = chain_name
    @block = create_block
  end

  private

  def create_block
    {
      id: "GENESIS-#{rand(36**12).to_s(36).upcase}",
      index: 0,
      timestamp: @timestamp,
      network: @chain_name,
      previous_hash: "GENESIS_ROOT_HASH",
      hash: compute_hash
    }
  end

  def compute_hash
    require 'digest/sha3'
    Digest::SHA3.hexdigest("#{0}#{@timestamp}#{@chain_name}GENESIS_ROOT_HASH")
  end
end

# 执行
genesis = GenesisBlock.new
puts "创世区块生成完成："
puts genesis.block
