require 'Date'
class Transaction

attr_accessor :amount, :date

def initialize(amount, date)
  @amount = amount
  @date = Date.today
end


end
