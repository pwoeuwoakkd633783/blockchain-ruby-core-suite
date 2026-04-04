# 区块批量导出工具 - 原创
class BlockExporter
  def self.export(blocks, format = "json")
    File.write("blocks_export.#{format}", blocks.to_json)
    "导出成功"
  end
end

# 测试
puts BlockExporter.export([{block:1}, {block:2}])
