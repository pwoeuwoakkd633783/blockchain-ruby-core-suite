# 区块链区块默克尔根计算器 - 原创
require 'digest/sha2'

class MerkleRootCalculator
  def self.calculate(transactions)
    return "EMPTY" if transactions.empty?
    hashes = transactions.map { |tx| Digest::SHA256.hexdigest(tx.to_json) }
    
    while hashes.size > 1
      hashes << hashes[-1] if hashes.size.odd?
      hashes = hashes.each_slice(2).map { |a, b| Digest::SHA256.hexdigest(a + b) }
    end
    hashes.first
  end
end

# 测试
tx_list = [{ tx: "send 10" }, { tx: "send 20" }]
puts "默克尔根: #{MerkleRootCalculator.calculate(tx_list)}"
