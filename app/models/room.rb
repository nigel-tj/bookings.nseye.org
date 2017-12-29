class Room < ActiveRecord::Base

     acts_as_bookable

     has_many :pictures, as: :assetable, dependent: :destroy
     fileuploads :picture

    #  the default booking status of a room
     enum status: [:booked , :open]
     after_initialize :set_default_status, :if => :new_record?
    def set_default_status
        self.status ||= :open
    end
end
