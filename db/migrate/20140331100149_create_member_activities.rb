class CreateMemberActivities < ActiveRecord::Migration
  def change
  	drop_table :member_activities
    create_table :member_activities do |t|
      t.references :member, index: true
      t.references :activity, index: true
      t.integer :freq

      t.timestamps
    end
  end
end
