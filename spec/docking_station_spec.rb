require 'docking_station'


describe DockingStation do
  it { is_expected.to respond_to :release_bike  }

<<<<<<< HEAD
  describe '.capacity' do
    it "default capacity check" do
      expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
    end
  end

  describe 'initialization' do
    it 'has a variable capacity' do
      docking_station = DockingStation.new(50)
      50.times { docking_station.dock Bike.new }
      expect { docking_station.dock Bike.new }. to raise_error 'DockingStation full'
    end
  end

=======
  describe '#report_broken' do
    # it 'subject responds to broken method' do
    #   expect(subject).to respond_to :broken
    # end

    it 'returns false for broken' do
      subject.report_broken
      expect(subject).to be_broken
    end
  end


>>>>>>> 95a6dcfdff3e38bfbeb8e9fa04c15924b37a0e51
  describe '#release_bike' do
    it 'releases a bike' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end
    it 'raises error' do
      expect {subject.release_bike}.to raise_error "Error."
    end
  end

  it 'releases working bikes' do
    bike =  Bike.new
    expect(bike).to be_working
  end

  it 'tries to dock a bike' do
    expect(subject).to respond_to(:dock).with(1).argument
  end

  describe '#dock' do
<<<<<<< HEAD
    it 'raises error when there is a bike' do
      subject.capacity.times {subject.dock Bike.new}
=======
    it 'raises error when station full' do
      DockingStation::DEFAULT_CAPACITY.times {subject.dock Bike.new}
>>>>>>> 95a6dcfdff3e38bfbeb8e9fa04c15924b37a0e51
      expect {subject.dock Bike.new}.to raise_error "DockingStation full"
    end
  end
  # it '.bike' do
  #   expect(subject).to respond_to(:bike)
  # end

end
