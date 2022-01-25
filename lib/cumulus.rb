class Cumulus
  attr_reader :balance

  def initialize
    @balance = 0
    @days_saved = []
  end

  def save(today=Time.new)
    @days_saved << today
    @balance += 0.01 * @days_saved.length
  end

  def balance
    @balance.round(2)
  end
end