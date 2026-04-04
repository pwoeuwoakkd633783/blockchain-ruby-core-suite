# 工作量证明(PoW)共识算法 - 原创
class ProofOfWork
  def initialize(difficulty = 4)
    @difficulty = difficulty
    @prefix = "0" * difficulty
  end

  def mine(block_data)
    nonce = 0
    loop do
      hash = compute_hash(block_data, nonce)
      return { nonce: nonce, hash: hash } if hash.start_with?(@prefix)
      nonce += 1
    end
  end

  private

  def compute_hash(data, nonce)
    require 'digest/sha2'
    Digest::SHA256.hexdigest("#{data}#{nonce}")
  end
end

# 测试
pow = ProofOfWork.new(2)
result = pow.mine("BLOCK_DATA")
puts "挖矿完成: Nonce=#{result[:nonce]}, Hash=#{result[:hash]}"
