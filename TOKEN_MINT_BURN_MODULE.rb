# 代币铸造与销毁模块 - 原创
class TokenManager
  def initialize
    @supply = 0
  end

  def mint(amount)
    @supply += amount
  end

  def burn(amount)
    @supply -= amount if @supply >= amount
  end

  attr_reader :supply
end

# 测试
token = TokenManager.new
token.mint(1000)
puts "当前供应量: #{token.supply}"
