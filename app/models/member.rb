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
  # attr_accessible :email, :end_date, :first_name, :last_name, :membership_type, :start_date
  has_one :membership

  # def find_birthday
  	
  # end

  # def find_last_day
  	
  # end

  
end
