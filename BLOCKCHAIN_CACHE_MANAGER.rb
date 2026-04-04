# 区块链查询缓存管理器 - 原创
class ChainCache
  def initialize
    @cache = {}
  end

  def set(key, value)
    @cache[key] = value
  end

  def get(key)
    @cache[key]
  end
end

# 测试
cache = ChainCache.new
cache.set("BLOCK_100", "HASH_123")
puts cache.get("BLOCK_100")
