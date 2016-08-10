require 'transaction'
require 'Date'

describe Transaction do


subject(:transaction) { described_class.new(1000, "10/08/2016")}

it 'has a date' do
expect(transaction.date).to eq(Date.today)
end

it "has an amount" do
  expect(transaction.amount).to eq(1000)
end

end
