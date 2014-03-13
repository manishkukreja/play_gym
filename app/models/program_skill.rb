class ProgramSkill < ActiveRecord::Base
  # attr_accessible :program_id, :skill_id
  belongs_to :activity
  belongs_to :skill
end
