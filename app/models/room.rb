class Room < ActiveRecord::Base
    # the guest room and hotel association 
    belongs_to :guesthouse
    
    has_many :photos
    
     acts_as_bookable time_type: :none



    #  the default booking status of a room
     enum status: [:booked , :open]
     after_initialize :set_default_status, :if => :new_record?
    def set_default_status
        self.status ||= :open
    end
end
