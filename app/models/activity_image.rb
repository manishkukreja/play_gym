# == Schema Information
#
# Table name: activity_images
#
#  id          :integer          not null, primary key
#  activity_id :integer
#  image_1     :string(255)
#  image_2     :string(255)
#  image_3     :string(255)
#  image_4     :string(255)
#  image_5     :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#

class ActivityImage < ActiveRecord::Base
  # attr_accessible :activity_id, :image_1, :image_2, :image_3, :image_4, :image_5
  belongs_to :activity

  #mount_uploader :image_1 , ActivityImage1Uploader
end
