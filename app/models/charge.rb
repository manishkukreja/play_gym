# == Schema Information
#
# Table name: charges
#
#  id          :integer          not null, primary key
#  activity_id :integer
#  charge      :integer
#  freq_flag   :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#

class Charge < ActiveRecord::Base
  	belongs_to :activity
	
	scope :default_flat_200, -> { where("freq_flag = 'DEFAULT_FLAT_200'") }
	scope :per_hr_200, -> { where("freq_flag = 'PER_HR_200'") }

	scope :summer_1_per_hr_per_week, -> { where("freq_flag = 'SUMMER_1_PER_HR_PER_WEEK'") }
	scope :summer_2_per_hr_per_week, -> { where("freq_flag = 'SUMMER_2_PER_HR_PER_WEEK'") }
	scope :summer_3_per_hr_per_week, -> { where("freq_flag = 'SUMMER_3_PER_HR_PER_WEEK'") }
	
	scope :default_flat_2000, -> { where("freq_flag = 'DEFAULT_FLAT_2000'") }
	scope :per_hr_per_week, -> { where("freq_flag = 'PER_HR_PER_WEEK'") }
	scope :summer_1_per_week, -> { where("freq_flag = 'SUMMER_1_PER_WEEK'") }
	scope :summer_2_per_week, -> { where("freq_flag = 'SUMMER_1_PER_WEEK'") }
	scope :summer_3_per_week, -> { where("freq_flag = 'SUMMER_1_PER_WEEK'") }
	scope :member_1_per_week, -> { where("freq_flag = 'MEMBER_1_PER_WEEK'") }
	scope :member_2_per_week, -> { where("freq_flag = 'MEMBER_2_PER_WEEK'") }
	scope :member_3_per_week, -> { where("freq_flag = 'MEMBER_3_PER_WEEK'") }
	scope :member_4_per_week, -> { where("freq_flag = 'MEMBER_4_PER_WEEK'") }
  
end
