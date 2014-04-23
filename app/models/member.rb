# == Schema Information
#
# Table name: members
#
#  id              :integer          not null, primary key
#  first_name      :string(255)
#  last_name       :string(255)
#  email           :string(255)
#  membership_type :integer
#  start_date      :date
#  end_date        :date
#  created_at      :datetime
#  updated_at      :datetime
#  status          :boolean
#  dob             :date
#  phone1          :string(255)
#  phone2          :string(255)
#

class Member < ActiveRecord::Base
  has_one :membership
  validates_uniqueness_of :email
  has_many :member_charges, dependent: :destroy
  has_many :charges, through: :member_charges  
end
