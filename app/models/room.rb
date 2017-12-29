class Room < ActiveRecord::Base
     acts_as_bookable #time_type: :range , bookable_across_occurrences: true
    
    #  the default booking status of a room
     enum status: [:booked , :open]
     after_initialize :set_default_status, :if => :new_record?
    def set_default_status
        self.status ||= :open
    end
end
