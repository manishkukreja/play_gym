class AddColumnToMembers < ActiveRecord::Migration
  def change
    add_column :members, :start_time, :time
    add_column :members, :total_hours, :integer, default: 1
  end
end
