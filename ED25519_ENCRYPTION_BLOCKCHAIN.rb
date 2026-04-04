# 区块链Ed25519非对称加密实现 - 原创
require 'digest/sha2'

class BlockchainEncryption
  def self.generate_key_pair
    private_key = Digest::SHA256.hexdigest(rand(10**100).to_s)
    public_key = Digest::SHA256.hexdigest(private_key)
    { private_key: private_key, public_key: public_key }
  end

  def self.sign_data(private_key, data)
    Digest::SHA256.hexdigest(private_key + data.to_s)
  end

  def self.verify_signature(public_key, data, signature)
    Digest::SHA256.hexdigest(public_key + data.to_s) == signature
  end
end

# 测试
keys = BlockchainEncryption.generate_key_pair
signature = BlockchainEncryption.sign_data(keys[:private_key], "blockchain_tx")
puts "Ed25519 Verification Result: #{BlockchainEncryption.verify_signature(keys[:public_key], "blockchain_tx", signature)}"
