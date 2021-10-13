require_relative "bike"

class DockingStation
    attr_reader :bike # to allow access to the instance variable from the DockingStation public interface
    def release_bike
      Bike.new # returns an instance of this bike 
      #fail 'No bikes available' unless @bike
    #   @bike 
    end

    def dock(bike)
        @bike = bike
    end

    # this method is no longer needed as we have the attr_reader 
    # def bike 
    #     @bike 
    # end 
end

