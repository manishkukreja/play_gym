# == Schema Information
#
# Table name: social_authentications
#
#  id           :integer          not null, primary key
#  provider     :string(255)
#  uid          :string(255)
#  token        :string(255)
#  token_secret :string(255)
#  created_at   :datetime
#  updated_at   :datetime
#  user_id      :integer
#

class SocialAuthentications < ActiveRecord::Base
  # attr_accessible :provider, :token, :token_secret, :uid, :user_id
  belongs_to :user
end
