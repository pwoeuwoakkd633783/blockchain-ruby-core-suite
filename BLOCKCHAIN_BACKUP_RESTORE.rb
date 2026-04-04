# 区块链数据备份恢复 - 原创
class BackupTool
  def self.backup(chain)
    File.write("chain_backup.json", chain.to_json)
  end

  def self.restore
    JSON.parse(File.read("chain_backup.json"))
  end
end

# 测试
BackupTool.backup([{block:1}])
puts "备份完成"
