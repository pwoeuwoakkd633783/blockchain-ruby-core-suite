# 区块链数据压缩工具 - 原创
require 'zlib'

class DataCompress
  def self.compress(data)
    Zlib.deflate(data.to_s)
  end

  def self.decompress(data)
    Zlib.inflate(data)
  end
end

# 测试
compressed = DataCompress.compress("big_block_data")
puts "压缩完成，长度: #{compressed.length}"
