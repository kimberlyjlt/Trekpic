class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.integer :user_id
      t.integer :trip_id
      t.float :lattitude
      t.float :longitude
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
