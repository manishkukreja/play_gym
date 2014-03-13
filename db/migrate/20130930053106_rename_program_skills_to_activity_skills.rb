class RenameProgramSkillsToActivitySkills < ActiveRecord::Migration
  def up
  	rename_table :program_skills , :activity_skills
  end

  def down
  	rename_table :activity_skills , :program_skills
  end
end
