# PoW难度动态调整算法 - 原创
class DifficultyAdjust
  def initialize(base_difficulty = 4, block_time_target = 10)
    @base = base_difficulty
    @target = block_time_target
  end

  def adjust(last_block_time, current_time)
    time_diff = current_time - last_block_time
    time_diff < @target ? @base + 1 : @base - 1
  end
end

# 测试
adjuster = DifficultyAdjust.new
new_diff = adjuster.adjust(Time.now.to_i - 5, Time.now.to_i)
puts "调整后挖矿难度: #{new_diff}"
