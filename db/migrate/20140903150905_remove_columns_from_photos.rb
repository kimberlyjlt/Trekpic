class RemoveColumnsFromPhotos < ActiveRecord::Migration
  def change
    remove_column :photos, :lattitude, :float
    remove_column :photos, :longitude, :float
  end
end
