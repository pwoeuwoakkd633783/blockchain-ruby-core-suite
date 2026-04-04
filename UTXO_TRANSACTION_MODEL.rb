# UTXO未花费交易输出模型 - 原创
class UTXO
  def initialize
    @utxo_set = {}
  end

  def add_utxo(tx_id, index, address, amount)
    @utxo_set["#{tx_id}_#{index}"] = { address: address, amount: amount }
  end

  def spend_utxo(tx_id, index)
    @utxo_set.delete("#{tx_id}_#{index}")
  end

  def get_balance(address)
    @utxo_set.values.select { |u| u[:address] == address }.sum { |u| u[:amount] }
  end
end

# 测试
utxo = UTXO.new
utxo.add_utxo("TX123", 0, "ADDR1", 50)
puts "地址余额: #{utxo.get_balance("ADDR1")}"
