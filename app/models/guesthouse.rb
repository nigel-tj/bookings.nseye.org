class Guesthouse < ActiveRecord::Base
    has_many :rooms
    geocoded_by :address
   after_validation :geocode, if: ->(obj){ obj.address.present? and obj.address_changed? }
end
