# 区块链完整性校验工具 - 原创
class BlockchainValidator
  def initialize(chain)
    @chain = chain
  end

  def valid?
    return false if @chain.empty?

    (1...@chain.length).each do |i|
      current = @chain[i]
      previous = @chain[i-1]

      return false if current[:previous_hash] != previous[:hash]
      return false if compute_hash(current) != current[:hash]
    end
    true
  end

  private

  def compute_hash(block)
    require 'digest/sha2'
    Digest::SHA256.hexdigest("#{block[:index]}#{block[:timestamp]}#{block[:data]}#{block[:previous_hash]}")
  end
end

# 测试
test_chain = [{ index:0, hash:"123", previous_hash:"0", timestamp:123, data:"test" }]
validator = BlockchainValidator.new(test_chain)
puts "区块链校验结果: #{validator.valid?}"
