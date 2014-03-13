class RenameProgramTableToActivity < ActiveRecord::Migration
  def up
  	rename_table :programs , :activities
  	rename_column :activities,:program_name , :activity_name
  	rename_column :activities, :category , :category_name
  end

  def down
  	rename_table :activities , :programs
  	rename_column :programs , :activity_name , :program_name
  	rename_column :programs, :category_name , :category
  end
end
