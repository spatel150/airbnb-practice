class Guest

    @@all = []
    attr_reader :name

    def initialize(name)
        @name = name 
        @@all << self
    end 

    def self.all
        @@all
    end 

    def listings
        # Trip.all.select {|t| t.guest == self}.map {|t| t.listing}
        trips.map {|t| t.listing}
    end 

    def trips
        Trip.all.select {|t| t.guest == self}
    end 

    def self.find_all_by_name(name)
        @@all.find_all {|n| n.name == name}
    end

    def trip_count
        self.trips.count 
    end 

    def self.pro_traveller
        @@all.select {|guest| guest.trip_count > 1}
    end 

end 
