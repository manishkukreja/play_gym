class AddImagePathToPrograms < ActiveRecord::Migration
  def change
    add_column :programs, :image_path, :string
  end
end
