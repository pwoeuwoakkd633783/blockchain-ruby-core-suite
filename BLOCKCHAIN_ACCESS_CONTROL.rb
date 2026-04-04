# 区块链访问控制模块 - 原创
class AccessControl
  def initialize
    @admins = []
  end

  def add_admin(address)
    @admins << address
  end

  def admin?(address)
    @admins.include?(address)
  end
end

# 测试
ac = AccessControl.new
ac.add_admin("ADMIN_ADDR")
puts ac.admin?("ADMIN_ADDR")
