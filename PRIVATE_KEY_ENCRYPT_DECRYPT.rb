# 私钥加密解密工具 - 原创
require 'digest/sha2'

class KeyEncrypt
  def self.encrypt(key, password)
    Digest::SHA256.hexdigest(key + password)
  end

  def self.decrypt(encrypted_key, password, original_key)
    Digest::SHA256.hexdigest(original_key + password) == encrypted_key
  end
end

# 测试
enc = KeyEncrypt.encrypt("priv_key", "123456")
puts KeyEncrypt.decrypt(enc, "123456", "priv_key")
