# == Schema Information
#
# Table name: members
#
#  id            :integer          not null, primary key
#  first_name    :string(255)
#  last_name     :string(255)
#  email         :string(255)
#  membership_id :integer
#  start_date    :date
#  end_date      :date
#  created_at    :datetime
#  updated_at    :datetime
#  status        :boolean
#  dob           :date
#  phone1        :string(255)
#  phone2        :string(255)
#  start_time    :time
#  total_hours   :integer          default(1)
#

class Member < ActiveRecord::Base
  belongs_to :membership
  validates_uniqueness_of :email
  has_many :member_charges, dependent: :destroy
  has_many :charges, through: :member_charges
  has_many :childrens
  accepts_nested_attributes_for :childrens, allow_destroy: true
  
  def total_charge
  	_total_charges = {}
  	self.charges.each do |charge|
  		if charge.freq_flag == 'DEFAULT_FLAT_2000'
  			_total_charges[:default_flat_2000] = 2000
  		elsif charge.freq_flag == 'MEMBER_3_PER_WEEK'
  			_total_charges[:member_3_per_week] = charge.charge + _total_charges[:member_3_per_week] rescue charge.charge
  		elsif charge.freq_flag == 'MEMBER_4_PER_WEEK'
  			_total_charges[:member_4_per_week] = charge.charge + _total_charges[:member_4_per_week] rescue charge.charge
  		elsif charge.freq_flag == 'MEMBER_5_PER_WEEK'
  			_total_charges[:member_5_per_week] = charge.charge + _total_charges[:member_5_per_week] rescue charge.charge
  		elsif charge.freq_flag == 'MEMBER_SUMMER_1_PER_WEEK'
  			_total_charges[:member_summer_1_per_week] = charge.charge + _total_charges[:member_summer_1_per_week] rescue charge.charge
  		elsif charge.freq_flag == 'MEMBER_SUMMER_2_PER_WEEK'
  			_total_charges[:member_summer_2_per_week] = charge.charge + _total_charges[:member_summer_2_per_week] rescue charge.charge
  		elsif charge.freq_flag == 'MEMBER_SUMMER_3_PER_WEEK'
  			_total_charges[:member_summer_3_per_week] = charge.charge + _total_charges[:member_summer_3_per_week] rescue charge.charge
  		end
  	end
    sum = 0
  	_total_charges.map {|key, val| sum = sum + _total_charges[key]}
    case self.membership.membership_type
    when "Quarterly"
      sum = sum - (sum / 10)
    when "Half Yearly"
      sum = sum - (sum * 20 / 100)
    when "Yearly"
      sum = sum - (sum * 30 / 100)
    end
    sum
  end
end
