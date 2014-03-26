# == Schema Information
#
# Table name: comments
#
#  id               :integer          not null, primary key
#  user_id          :integer
#  commentable_id   :integer
#  commentable_type :string(255)
#  created_at       :datetime
#  updated_at       :datetime
#  content          :text
#  email            :string(255)
#  phone            :string(255)
#

class Comment < ActiveRecord::Base
  # attr_accessible :content, :user_id,:commentable_id,:commentable_type
  belongs_to :user
  belongs_to :activity
  #belongs_to :commentable, :polymorphic => true
end
