class AddColumnCategoryToPrograms < ActiveRecord::Migration
  def change
    add_column :programs, :category, :string
  end
end
