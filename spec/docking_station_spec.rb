require "docking_station"

describe DockingStation do

    it 'responds to release bike' do
        expect(subject).to respond_to :release_bike
    end
  
    it 'releases working bikes' do
        bike = subject.release_bike
        expect(bike).to be_working
    end
  
    it 'docks something' do
        bike = Bike.new
        expect(subject.dock(bike)).to eq bike
    end

    # it 'releases a bike' do
    #   bike = Bike.new
    #   subject.dock(bike)
    #       # we want to release the bike we docked
    #   expect(subject.release_bike).to eq bike # the subject is the instance of the class
    # end

    it { is_expected.to respond_to(:dock).with(1).argument }

    it { is_expected.to respond_to(:bike) } # in response to a no method error 

     # let's update our test for #bike
    it 'returns docked bikes' do
      bike = Bike.new
      subject.dock(bike)
    # Again, we need to return the bike we just docked
      expect(subject.bike).to eq bike
    end


    # it 'raises an error when there are no bikes available' do
    #     expect{ subject.release_bike }.to raise_error 'No bikes available' 
    # end
  
end

