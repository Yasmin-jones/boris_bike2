#require_relative "bike"

class DockingStation
    #attr_reader :bike
    def release_bike
      Bike.new
        #fail 'No bikes available' unless @bike
        #@bike
    end

    #def dock(bike)
    #    @bike = bike
    #end
end

