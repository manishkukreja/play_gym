class CreateCharges < ActiveRecord::Migration
  def change
    create_table :charges do |t|
      t.references :activity, index: true
      t.integer :charge
      t.string :freq_flag

      t.timestamps
    end
  end
end
