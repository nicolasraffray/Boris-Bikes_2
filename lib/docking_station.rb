require 'bike'

class DockingStation
  DEFAULT_CAPACITY = 20

  attr_accessor :capacity
  # attr_reader :bikes

  def initialize(capacity = DEFAULT_CAPACITY)
    @capacity = capacity
    @bikes = []
  end

<<<<<<< HEAD
  # def capacity
  #   arg.nil? ? @capacity = 20 : @capacity = arg
  # end
=======
  def report_broken
    @broken = true
  end

  def broken?
    @broken
  end
>>>>>>> 95a6dcfdff3e38bfbeb8e9fa04c15924b37a0e51

  def dock(bike)
    fail "DockingStation full" if full?
    bikes << bike
  end

  def release_bike
    fail "Error." if empty?
    bikes.pop
  end

  private

  attr_reader :bikes

  def full?
    bikes.count >= @capacity
  end

  def empty?
    bikes.empty?
  end
end


  # def bike
  #
  #   @bike
  #
  # end
