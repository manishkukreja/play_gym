# == Schema Information
#
# Table name: member_charges
#
#  id         :integer          not null, primary key
#  member_id  :integer
#  charge_id  :integer
#  freq       :integer
#  created_at :datetime
#  updated_at :datetime
#

class MemberCharge < ActiveRecord::Base
  belongs_to :member
  belongs_to :charge
end
