class Photo < ActiveRecord::Base
    # the jquery addition
    include Rails.application.routes.url_helpers
    # image_accessor :image
    dragonfly_accessor :image
    # attr_accessible :image, :title
    
    validates :title, presence: true, length: {minimum: 2, maximum: 20}
validates :image, presence: true

validates :image, presence: true
validates_size_of :image, maximum: 500.kilobytes,
                  message: "should be no more than 500 KB", if: :image_changed?

validates_property :format, of: :image, in: [:jpeg, :jpg, :png, :bmp], case_sensitive: false,
                   message: "should be either .jpeg, .jpg, .png, .bmp", if: :image_changed?
                   
#one convenient method to pass jq_upload the necessary information
  def to_jq_upload
    {
      "name" => read_attribute(:image_name),
      "size" => image.size,
      "url" => image.url,
      "thumbnail_url" => image.thumb('80x80#').url,
      "delete_url" => photo_path(:id => id),
      "delete_type" => "DELETE" 
    }
  end

end
