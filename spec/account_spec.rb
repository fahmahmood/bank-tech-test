require 'account'

describe Account do

let(:transaction) {double :transaction, date: "10/08/2016"}
subject(:account) { described_class.new}

describe '#initialize' do
  it 'has an initial balance of 0' do
    expect(account.balance).to eq (0)
  end
end

describe  '#deposit' do
  it 'increases the balance by an amount' do
    account.deposit(100, 10/10/2010)
    expect(account.balance).to eq (100)
  end
end

describe '#withdraw' do

  it 'only withdraws from accounts with funds' do
    expect{account.withdraw(10,10/10/2010)}.to raise_error "Insufficient funds!"
  end

  it 'decreases the balance by an amount' do
    account.deposit(100, 10/10/10)
    expect{account.withdraw(1, 10/10/2010)}.to change{account.balance}.by (-1)
  end



end

end
