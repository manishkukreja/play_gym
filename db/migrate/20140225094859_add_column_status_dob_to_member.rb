class AddColumnStatusDobToMember < ActiveRecord::Migration
  def change
    add_column :members, :status, :boolean
    add_column :members, :dob, :date
  end
end
