# 去中心化身份DID生成器 - 原创
require 'securerandom'

class DIDGenerator
  def self.create_did
    did_id = SecureRandom.uuid
    "did:rubychain:#{did_id}"
  end
end

# 测试
puts DIDGenerator.create_did
