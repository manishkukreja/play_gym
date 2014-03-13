# == Schema Information
#
# Table name: activity_skills
#
#  id         :integer          not null, primary key
#  program_id :integer
#  skill_id   :integer
#  created_at :datetime
#  updated_at :datetime
#

class ActivitySkill < ActiveRecord::Base
  # attr_accessible :program_id, :skill_id
  belongs_to :activity
  belongs_to :skill
end
