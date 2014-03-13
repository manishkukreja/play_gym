class CreateMemberships < ActiveRecord::Migration
  def change
    create_table :memberships do |t|
      t.string :membership_type
      t.integer :charge

      t.timestamps
    end
  end
end
