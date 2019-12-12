require 'bike'

class DockingStation
  attr_reader :bike

  def dock(bike)
    fail "DockingStation full" if @bike
    @bike = bike
  end

  def release_bike
    fail "Error." unless @bike
    @bike
  end




  # def bike
  #
  #   @bike
  #
  # end

end
