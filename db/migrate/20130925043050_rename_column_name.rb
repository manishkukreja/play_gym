class RenameColumnName < ActiveRecord::Migration
  def up
  	rename_column :categories , :category , :category_name
  end

  def down
  	rename_column :categories , :category_name , :category
  end
end
