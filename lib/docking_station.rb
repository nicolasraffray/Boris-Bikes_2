require 'bike'

class DockingStation
  attr_reader :bikes

  DEFAULT_CAPACITY = 20

  def initialize
    @bikes = []
  end

  def report_broken
    @broken = true
  end

  def broken?
    @broken
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
    @bikes.count >= DEFAULT_CAPACITY ? true : false
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
