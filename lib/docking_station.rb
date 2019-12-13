require 'bike'

class DockingStation
  attr_reader :bikes
  def initialize
    @bikes = []
  end

  def dock(bike)
    fail "DockingStation full" if full?
    @bikes << bike
  end

  def release_bike
    fail "Error." if @bikes.empty?
    @bikes.pop
  end

  private
  def full?
    @bikes.count >= 20 ? true : false
  end

  def empty?
    @bikes.empty?
  end
end


  # def bike
  #
  #   @bike
  #
  # end
