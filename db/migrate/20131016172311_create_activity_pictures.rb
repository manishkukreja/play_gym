class CreateActivityPictures < ActiveRecord::Migration
  def change
    create_table :activity_pictures do |t|
      t.integer :activity_id
      t.string :image_1
      t.string :image_2
      t.string :image_3
      t.string :image_4
      t.string :image_5

      t.timestamps
    end
  end
end
