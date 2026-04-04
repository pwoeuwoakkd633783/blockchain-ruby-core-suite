# Ruby基础智能合约执行器 - 原创
class SmartContract
  def initialize(code)
    @code = code
  end

  def execute(params)
    eval(@code)
  end
end

# 测试
contract = SmartContract.new("params[:a] + params[:b]")
puts "合约执行结果: #{contract.execute({a:10, b:20})}"
