class Project < ActiveRecord::Base
  belongs_to :user
  has_attached_file :finished_image, styles: {
    thumb: '100x100>',
    square: '200x200#',
    medium: '300x300>'
  }

  # Validate the attached image is image/jpg, image/png, etc
  validates_attachment_content_type :finished_image, :content_type => /\Aimage\/.*\Z/
  
  validates :finished_image, presence: true
  validates :name, presence: true
end
