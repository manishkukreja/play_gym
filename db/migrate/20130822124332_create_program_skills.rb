class CreateProgramSkills < ActiveRecord::Migration
  def change
    create_table :program_skills do |t|
      t.integer :program_id
      t.integer :skill_id

      t.timestamps
    end
  end
end
