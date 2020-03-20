require './atm'

RSpec.describe ATM do
  describe "存錢功能" do #describe同義詞context，可不寫，但寫了比較知道以下功能在幹嘛。
    it "可以存錢" do
      atm = ATM.new(5)
      atm.deposit(5)
      expect(atm.balance).to be 10
      # expect(atm.balance).to(be(10)) < ??後面這兩層小括號？
    end
    it "不能存0 or 負值" do
      atm = ATM.new(5)
      atm.deposit(-3)
      expect(atm.balance).to be 5
    end
  end
  describe "領錢功能" do
    it "領錢" do
      atm = ATM.new(10)
      atm.withdraw(5)
      expect(atm.balance).to be 5
    end
    it "不能領0或負值" do
      atm = ATM.new(10)
      atm.withdraw(-5)
      expect(atm.balance).to be 10
    end
    it "不能領超過本身餘額" do
      atm = ATM.new(10)
      atm.withdraw(20)
      expect(atm.balance).to be 10
    end
  end
end