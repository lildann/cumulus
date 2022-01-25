class Cumulus
  attr_accessor :available_balance
  attr_reader :savings_balance

  def initialize(available_balance=600)
    @savings_balance = 0
    @days_saved = []
    @available_balance = available_balance
  end

  def save(today=Time.new)
    fail "Insufficient funds, plz top up available balance" if insufficient_funds?
    @days_saved << today
    @available_balance -= 0.01 * @days_saved.length
    @savings_balance += 0.01 * @days_saved.length
  end

  def savings_balance
    @savings_balance.round(2)
  end

  private
  
  def insufficient_funds?
    amount_to_save = (0.01 * (@days_saved.length + 1))
    @available_balance - amount_to_save <= 0.0
  end
end