require 'bike'

describe Bike do
  it { is_expected.to respond_to :working?}
  describe 'broken_bike' do
    it 'says the bike is broken' do
      expect(subject.working?).to eq false
    end
  end
end

