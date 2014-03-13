class AddColumnToDiscounts < ActiveRecord::Migration
  def change
    add_column :discounts, :discount_percent, :integer
    remove_column :discounts, :discounted_rate
  end
end
