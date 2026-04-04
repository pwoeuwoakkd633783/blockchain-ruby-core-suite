# 默克尔树实现（区块链交易校验） - 原创
require 'digest/sha2'

class MerkleTree
  def initialize(transactions)
    @leaves = transactions.map { |t| Digest::SHA256.hexdigest(t.to_s) }
    @root = compute_root
  end

  attr_reader :root

  private

  def compute_root
    return @leaves[0] if @leaves.size == 1
    new_level = []
    @leaves.each_slice(2) do |a, b|
      b ||= a
      new_level << Digest::SHA256.hexdigest(a + b)
    end
    @leaves = new_level
    compute_root
  end
end

# 测试
txs = [{ id:1 }, { id:2 }, { id:3 }]
tree = MerkleTree.new(txs)
puts "默克尔根: #{tree.root}"
