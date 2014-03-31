# == Schema Information
#
# Table name: activities
#
#  id            :integer          not null, primary key
#  activity_name :string(255)
#  free          :boolean
#  created_at    :datetime
#  updated_at    :datetime
#  description   :text
#  image_path    :string(255)
#  video_path    :string(255)
#  category_name :string(255)
#  category_id   :integer
#

class Activity < ActiveRecord::Base
  # attr_accessible :free, :activity_name , :image_path,:description,:category_id, :category_name, :video_path
  has_many :comments#, :as => :commentable
  belongs_to :categories
  belongs_to :user
  has_many :activity_pictures
  has_many :activity_skills , :dependent => :destroy
  has_many :skills ,:through => :program_skills , :dependent => :destroy
  has_many :memberships
  mount_uploader :image_path , ActivityImageUploader
  scope :find_by_events, lambda{where('category_id = ?',3)}
  scope :find_by_programs, lambda{where('category_id = ?',2)}
has_many :members
end
