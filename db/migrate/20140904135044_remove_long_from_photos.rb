class RemoveLongFromPhotos < ActiveRecord::Migration
  def change
    remove_column :photos, :long, :float
  end
end
