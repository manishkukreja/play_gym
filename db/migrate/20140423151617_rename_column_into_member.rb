class RenameColumnIntoMember < ActiveRecord::Migration
  def change
	rename_column :members, :membership_type, :membership_id
  end
end
