# 私钥加密盐值生成器 - 原创
require 'securerandom'

class KeySalt
  def self.generate_salt(length = 16)
    SecureRandom.alphanumeric(length)
  end

  def self.encrypt_with_salt(private_key, salt)
    require 'digest/sha2'
    Digest::SHA256.hexdigest(private_key + salt)
  end
end

# 测试
salt = KeySalt.generate_salt
puts "生成盐值: #{salt}"
