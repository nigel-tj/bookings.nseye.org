class Room < ActiveRecord::Base
<<<<<<< HEAD
     acts_as_bookable

     has_many :pictures, as: :assetable, dependent: :destroy
     fileuploads :picture
     
=======
     acts_as_bookable #time_type: :range #, bookable_across_occurrences: true
    
>>>>>>> 6b878ed145fd5e9e98edffebb88bc4804a29e3d6
    #  the default booking status of a room
     enum status: [:booked , :open]
     after_initialize :set_default_status, :if => :new_record?
    def set_default_status
        self.status ||= :open
    end
end
