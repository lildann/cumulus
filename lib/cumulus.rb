class Cumulus
  attr_reader :balance

  def initialize
    @balance = 0
  end

  def save(today=Time.new)
    @balance += 0.01
  end
end