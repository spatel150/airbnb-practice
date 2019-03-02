class Listing

    @@all = []
    attr_reader :city

    def initialize(city)
        @city = city
        @@all << self
    end 

    def self.all
        @@all
    end 

    def guests
        # Trip.all.select {|t| t.listing == self}.map{|t| t.guest}
        trips.map {|t| t.guest}
    end 

    def trips
        Trip.all.select {|t| t.listing == self}
    end 

    def self.find_all_by_city(city)
        @@all.find_all {|l| l.city == city}
    end 

    def trip_count
        self.trips.count
    end 

    def self.most_popular
        @@all.max_by {|l| l.trip_count}
    end 

end 
