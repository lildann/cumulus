require 'cumulus'

describe Cumulus do
  let(:cumulus) { Cumulus.new(600) }

  it 'should save 1p on the first day of the savings streak' do
    cumulus.save(Time.new)
    expect(cumulus.savings_balance).to eq(0.01)
  end

  it 'should save 2p on the second day' do
    2.times { cumulus.save(Time.new) }
    expect(cumulus.savings_balance).to eq(0.03)
  end

  it 'should save £589.96 after 50 weeks' do
    343.times { cumulus.save(Time.new) }
    expect(cumulus.savings_balance).to eq(589.96)
  end

  it 'should take money out of available_balance' do
    cumulus.save(Time.new)
    expect(cumulus.available_balance).to eq(599.99)
  end

  it 'should throw an error if there is not enought money available to save' do 
    cumulus = Cumulus.new(0)
    expect { cumulus.save(Time.new) }.to raise_error("Insufficient funds, plz top up available balance")
  end
end
