# == Schema Information
#
# Table name: children
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  member_id  :integer
#  age        :integer
#  created_at :datetime
#  updated_at :datetime
#

class Children < ActiveRecord::Base
  belongs_to :member
end
