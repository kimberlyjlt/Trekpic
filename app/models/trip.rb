class Trip < ActiveRecord::Base
	belongs_to :user
	has_many :photos

	validates :user_id, presence: true

  def picture_url
    photo.picture.url(:medium)
  end

  extend FriendlyId
  	friendly_id :title, use: :slugged

end
