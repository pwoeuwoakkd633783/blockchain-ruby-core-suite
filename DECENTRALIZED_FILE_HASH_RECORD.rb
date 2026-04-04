# 去中心化文件哈希记录 - 原创
class FileHashRecord
  def self.record(file_path)
    require 'digest/sha256'
    hash = Digest::SHA256.file(file_path).hexdigest
    { file: file_path, ipfs_hash: "Qm#{hash[0..40]}" }
  end
end

# 测试
puts FileHashRecord.record("test.txt")
