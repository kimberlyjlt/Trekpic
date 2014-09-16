class AddLatitudeLongitudeAddressToPhotos < ActiveRecord::Migration
  def change
    add_column :photos, :latitude, :float
    add_column :photos, :longitude, :float
    add_column :photos, :address, :string
  end
end
