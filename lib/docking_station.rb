require 'bike'

class DockingStation
  attr_reader :bike

  def release_bike

    fail "Error." unless @bike
    @bike
  end

  def dock(bike)
    @bike = bike
  end

  def bike
    @bike
  end

end
