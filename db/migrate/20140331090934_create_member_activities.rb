class CreateMemberActivities < ActiveRecord::Migration
  def change
    create_table :member_activities do |t|
      t.integer :member_id
      t.integer :activity_id
      t.integer :freq
      t.timestamps
    end
  end
end
