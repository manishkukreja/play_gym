# == Schema Information
#
# Table name: events
#
#  id         :integer          not null, primary key
#  event_name :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Event < ActiveRecord::Base
  # attr_accessible :event_name
  has_many :comments, :as => :commentable
  belongs_to :user
end
