class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.integer :membership_type
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
