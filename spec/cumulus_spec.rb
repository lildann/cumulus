require 'cumulus'

describe Cumulus do
  let(:cumulus) { Cumulus.new }

  it 'should save 1p on the first day of the savings streak' do
    cumulus.save(Time.new)
    expect(cumulus.balance).to eq(0.01)
  end

  it 'should save 2p on the second day' do
    2.times { cumulus.save(Time.new) }
    expect(cumulus.balance).to eq(0.03)
  end

  it 'should save £589.96 after 50 weeks' do
    343.times { cumulus.save(Time.new) }
    expect(cumulus.balance).to eq(589.96)
  end
end
