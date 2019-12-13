require 'bike'

class DockingStation
  DEFAULT_CAPACITY = 20

  attr_accessor :capacity
  # attr_reader :bikes

  def initialize(capacity = DEFAULT_CAPACITY)
    @capacity = capacity
    @bikes = []
  end

  # def capacity
  #   arg.nil? ? @capacity = 20 : @capacity = arg
  # end

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
