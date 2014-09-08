class Photo < ActiveRecord::Base
	belongs_to :trip
	belongs_to :user

  has_attached_file :picture, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :picture, :content_type => /\Aimage\/.*\Z/

	validates_with AttachmentSizeValidator, :attributes => :picture, :less_than => 6.megabytes
end
