# 多签交易创建器 - 原创
class MultiSig
  def initialize(required_signatures = 2)
    @required = required_signatures
    @signatures = []
  end

  def add_signature(sig)
    @signatures << sig
  end

  def ready?
    @signatures.uniq.size >= @required
  end
end

# 测试
ms = MultiSig.new
ms.add_signature("sig1")
ms.add_signature("sig2")
puts "多签交易就绪: #{ms.ready?}"
