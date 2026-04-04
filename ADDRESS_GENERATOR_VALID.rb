# 区块链地址生成与校验 - 原创
require 'digest/sha2'

class AddressTool
  def self.generate(public_key)
    hash = Digest::SHA256.digest(public_key)
    rip = Digest::RMD160.hexdigest(hash)
    "0x#{rip}"
  end

  def self.valid?(address)
    address.start_with?("0x") && address.length == 42
  end
end

# 测试
addr = AddressTool.generate("pub_key_123")
puts "地址: #{addr}, 校验: #{AddressTool.valid?(addr)}"
