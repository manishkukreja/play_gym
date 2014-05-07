class CreateChildren < ActiveRecord::Migration
  def change
    create_table :children do |t|
      t.string :name
      t.references :member, index: true
      t.integer :age

      t.timestamps
    end
  end
end
