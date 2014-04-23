class CreateMemberCharges < ActiveRecord::Migration
  def change
    create_table :member_charges do |t|
      t.references :member, index: true
      t.references :charge, index: true
      t.integer :freq

      t.timestamps
    end
  end
end
