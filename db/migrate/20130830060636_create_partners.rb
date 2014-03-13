class CreatePartners < ActiveRecord::Migration
  def change
    create_table :partners do |t|
      t.string :name
      t.string :type
      t.integer :contact_number
      t.text :information
      t.text :contact_address
      t.string :image
      t.string :menu

      t.timestamps
    end
  end
end
