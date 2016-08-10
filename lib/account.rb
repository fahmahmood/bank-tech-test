require_relative 'transaction'
require 'Date'
class Account

MINIMUM_BALANCE = 0

attr_reader :balance

def initialize(transaction = Transaction)
  @balance = 0
  @transaction_history = []
  @transaction = transaction
end

def get_balance
  @balance
end

def deposit(amount, date)
  @transaction_history.push(@transaction.new(amount,Date.today))
  @balance += amount
end

def withdraw(amount, date)
  raise "Insufficient funds!" if @balance - amount < MINIMUM_BALANCE
  @transaction_history.push(@transaction.new(-amount,Date.today))
  @balance -= amount
end

def statement
  @transaction_history
end

end
