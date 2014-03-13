class AddColumnVideoPathToPrograms < ActiveRecord::Migration
  def change
    add_column :programs, :video_path, :string
  end
end
