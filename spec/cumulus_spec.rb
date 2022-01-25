require 'cumulus'

describe Cumulus do
  it 'should save 1p on the first day of the savings streak' do
    cumulus = Cumulus.new 
    cumulus.save(Time.new)
    expect(cumulus.balance).to eq(0.01)
  end
end
