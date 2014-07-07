class Project < ActiveRecord::Base
  belongs_to :user
  has_attached_file :finished_image, styles: {
    thumb: '100x100>',
    square: '200x200#',
    medium: '300x300>'
  }
  
    :url => ':s3_alias_url',
    :s3_host_alias => 'mystitching.s3.amazonaws.com', 
    :bucket => 'mystitching',
    :path => "images/:class/:id.:style.:extension"
  # Validate the attached image is image/jpg, image/png, etc
  validates_attachment_content_type :finished_image, :content_type => /\Aimage\/.*\Z/
end
