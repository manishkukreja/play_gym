class AddColumnToActivities < ActiveRecord::Migration
  def change
	add_column :activities, :charge, :integer
  end
end
