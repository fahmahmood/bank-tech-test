class Account

MINIMUM_BALANCE = 0

attr_reader :balance

def initialize
  @balance = 0
  @statement = []
end

def get_balance
  @balance
end

def deposit(amount)
  @balance += amount
end

def withdraw(amount)
  raise "Insufficient funds!" if @balance - amount < MINIMUM_BALANCE
  @balance -= amount
end


end
