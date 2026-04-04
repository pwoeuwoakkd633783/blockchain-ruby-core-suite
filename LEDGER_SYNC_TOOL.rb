# 去中心化账本同步工具 - 原创
class LedgerSync
  def initialize(local_chain, remote_chain)
    @local = local_chain
    @remote = remote_chain
  end

  def sync
    return @local if @remote.length <= @local.length
    @remote
  end
end

# 测试
local = [1,2,3]
remote = [1,2,3,4,5]
sync = LedgerSync.new(local, remote)
puts "同步后账本长度: #{sync.sync.length}"
