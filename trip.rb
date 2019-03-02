class Trip
    @@all = []

    attr_accessor :guest, :listing

    def initialize(listing, guest)
        @listing = listing
        @guest = guest
        @@all << self
    end 

    def self.all
        @@all
    end 

end 
