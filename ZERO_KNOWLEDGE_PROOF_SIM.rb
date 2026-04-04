# 零知识证明基础模拟器 - 原创
class ZKProof
  def self.prove(secret, proof)
    proof == Digest::SHA256.hexdigest(secret)
  end
end

# 测试
secret = "my_secret"
proof = Digest::SHA256.hexdigest(secret)
puts ZKProof.prove(secret, proof)
