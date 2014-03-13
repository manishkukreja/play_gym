# == Schema Information
#
# Table name: discounts
#
#  id               :integer          not null, primary key
#  start_date       :date
#  end_date         :date
#  membership_id    :integer
#  created_at       :datetime
#  updated_at       :datetime
#  discount_percent :integer
#

class Discount < ActiveRecord::Base
  # attr_accessible  :end_date, :membership_id, :start_date,:discount_percent
  belongs_to :membership
end
