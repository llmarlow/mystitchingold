class Update < ActiveRecord::Base
  belongs_to :project
  has_attached_file :update_image, 
    styles: {
    medium: '300x300>'
  }
  

  # Validate the attached image is image/jpg, image/png, etc
  validates_attachment_content_type :update_image, :content_type => /\Aimage\/.*\Z/
  
end
