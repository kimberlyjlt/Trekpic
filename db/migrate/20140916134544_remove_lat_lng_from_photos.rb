class RemoveLatLngFromPhotos < ActiveRecord::Migration
  def change
    remove_column :photos, :lat, :float
    remove_column :photos, :lng, :float
  end
end
