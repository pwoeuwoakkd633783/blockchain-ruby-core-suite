# 批量交易处理器 - 原创
class BatchTx
  def self.process(transactions)
    transactions.each { |tx| puts "处理交易: #{tx[:id]}" }
    transactions.size
  end
end

# 测试
txs = [{id:1}, {id:2}, {id:3}]
puts BatchTx.process(txs)
