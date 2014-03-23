class AddColumnsToMembers < ActiveRecord::Migration
  def change
    add_column :members, :phone1, :string
    add_column :members, :phone2, :string
  end
end
