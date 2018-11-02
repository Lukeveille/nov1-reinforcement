class Location
  def initialize(name)
    @name = name
  end

  attr_accessor :name
end

class Trip
  def initialize
    @stops = []
  end

  def addLocations(*locations)
    self.stops += locations
  end

  def goOnTrip
    puts "Began trip."
    @stops.each_cons(2) do |stop|
      puts "Travelled from #{stop[0].name} to #{stop[1].name}"
    end
    puts "Ended trip."
  end

  attr_accessor :stops
end

toronto = Location.new("Toronto")
ottawa = Location.new("Ottawa")
montreal = Location.new("Montreal")
quebec_city = Location.new("Quebec City")
halifax = Location.new("Halifax")
stjohns = Location.new("St. John's")

trippy = Trip.new
trippy.addLocations(toronto, ottawa, montreal, quebec_city, halifax, stjohns)
