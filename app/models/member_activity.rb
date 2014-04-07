# == Schema Information
#
# Table name: member_activities
#
#  id          :integer          not null, primary key
#  member_id   :integer
#  activity_id :integer
#  freq        :integer
#  created_at  :datetime
#  updated_at  :datetime
#

class MemberActivity < ActiveRecord::Base
  belongs_to :member
  belongs_to :activity
end
