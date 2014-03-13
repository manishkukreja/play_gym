# == Schema Information
#
# Table name: skills
#
#  id         :integer          not null, primary key
#  skill_name :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Skill < ActiveRecord::Base
  # attr_accessible :skill_name
  has_many :activity_skills 
  has_many :activity , :through => :activity_skills , :dependent=> :destroy
end
