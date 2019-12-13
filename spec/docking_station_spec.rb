require 'docking_station'


describe DockingStation do
  it { is_expected.to respond_to :release_bike  }

  describe '#report_broken' do
    # it 'subject responds to broken method' do
    #   expect(subject).to respond_to :broken
    # end

    it 'returns false for broken' do
      subject.report_broken
      expect(subject).to be_broken
    end
  end


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
    it 'raises error when station full' do
      DockingStation::DEFAULT_CAPACITY.times {subject.dock Bike.new}
      expect {subject.dock Bike.new}.to raise_error "DockingStation full"
    end
  end
  # it '.bike' do
  #   expect(subject).to respond_to(:bike)
  # end

end
