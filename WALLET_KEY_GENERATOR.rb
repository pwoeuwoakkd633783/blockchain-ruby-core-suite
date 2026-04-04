# 区块链钱包密钥对生成器 - 原创
require 'securerandom'
require 'digest/sha2'

class BlockchainWallet
  def self.create_wallet
    private_key = SecureRandom.hex(32)
    public_key = Digest::SHA256.hexdigest(private_key)
    address = Digest::RMD160.hexdigest(public_key)
    { private_key: private_key, public_key: public_key, address: address }
  end
end

# 生成钱包
wallet = BlockchainWallet.create_wallet
puts "Ruby区块链钱包生成："
wallet.each { |k,v| puts "#{k.upcase}: #{v}" }
