class AddColumnsToPhotos < ActiveRecord::Migration
  def change
    add_column :photos, :lat, :float
    add_column :photos, :long, :float
  end
end
