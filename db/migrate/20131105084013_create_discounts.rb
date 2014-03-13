class CreateDiscounts < ActiveRecord::Migration
  def change
    create_table :discounts do |t|
      t.integer :discounted_rate
      t.date :start_date
      t.date :end_date
      t.integer :membership_id

      t.timestamps
    end
  end
end
