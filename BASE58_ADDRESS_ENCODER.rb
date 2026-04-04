# 区块链地址Base58编码 - 原创
class Base58
  ALPHABET = "123456789ABCDEFGHJKLMNPQRSTUVWXYZabcdefghijkmnopqrstuvwxyz"

  def self.encode(data)
    num = data.unpack("H*")[0].to_i(16)
    result = ""
    while num > 0
      result = ALPHABET[num % 58] + result
      num /= 58
    end
    result
  end
end

# 测试
puts Base58.encode("test_address")
