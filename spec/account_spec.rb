require 'account'

describe Account do

subject(:account) { described_class.new}

describe '#initialize' do
  it 'has an initial balance of 0' do
    expect(account.balance).to eq (0)
  end
end

describe  '#deposit' do
  it 'increases the balance by an amount' do
    account.deposit(100)
    expect(account.balance).to eq (100)
  end
end

describe '#withdraw' do

  it 'only withdraws from accounts with funds' do
    expect{account.withdraw(10)}.to raise_error "Insufficient funds!"
  end

  it 'decreases the balance by an amount' do
    account.deposit(100)
    expect{account.withdraw(1)}.to change{account.balance}.by (-1)
  end



end

end
