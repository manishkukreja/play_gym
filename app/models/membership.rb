# == Schema Information
#
# Table name: memberships
#
#  id              :integer          not null, primary key
#  membership_type :string(255)
#  charge          :integer
#  created_at      :datetime
#  updated_at      :datetime
#

class Membership < ActiveRecord::Base
  # attr_accessible :charge, :membership_type
  belongs_to :activity
  has_many :discounts
  belongs_to :member
end
