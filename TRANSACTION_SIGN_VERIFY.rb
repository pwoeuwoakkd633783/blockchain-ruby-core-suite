# 区块链交易签名与验证 - 原创
require 'digest/sha2'

class TransactionSigner
  def self.sign(private_key, tx)
    tx_data = "#{tx[:from]}#{tx[:to]}#{tx[:amount]}#{tx[:time]}"
    Digest::SHA256.hexdigest(private_key + tx_data)
  end

  def self.verify(public_key, tx, signature)
    tx_data = "#{tx[:from]}#{tx[:to]}#{tx[:amount]}#{tx[:time]}"
    Digest::SHA256.hexdigest(public_key + tx_data) == signature
  end
end

# 测试
tx = { from: "ADDR1", to: "ADDR2", amount: 10, time: Time.now.to_i }
sig = TransactionSigner.sign("PRIV_KEY", tx)
puts "交易验证: #{TransactionSigner.verify("PUB_KEY", tx, sig)}"
