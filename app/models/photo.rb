class Photo < ActiveRecord::Base
	belongs_to :trip
	belongs_to :user

  geocoded_by :address
  after_validation :geocode

  has_attached_file :picture, photos: {
	thumb: '100x100>',
	square: '200x200#',
	medium: '300x300>'
  }

  has_attached_file :picture, :styles => {
  	:square => "200x200#",
  	:medium => "300x300>", 
  	:thumb => "100x100>" }, 
  	:default_url => "/images/:style/missing.png"
  	
  validates_attachment_content_type :picture, :content_type => /\Aimage\/.*\Z/

  validates_with AttachmentSizeValidator, :attributes => :picture, :less_than => 10.megabytes

  def picture_url
    picture.url(:medium)
  end
  
  extend FriendlyId
    friendly_id :title, use: :slugged
=begin
validates :latitude, numericality: { greater_than_or_equal_to: -90,  \
  less_than_or_equal_to: 90 }
validates :longitude, numericality: { greater_than_or_equal_to: -180,  \
  less_than_or_equal_to: 180 }
=end
end
