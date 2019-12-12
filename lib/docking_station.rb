require 'bike'

class DockingStation
  attr_reader :bikes
  def initialize
    @bikes = []
  end

  def dock(bike)
    fail "DockingStation full" if @bikes.size >= 20
    @bikes << bike
  end

  def release_bike
    fail "Error." if @bikes.empty?
    @bikes.pop
  end




  # def bike
  #
  #   @bike
  #
  # end

end
