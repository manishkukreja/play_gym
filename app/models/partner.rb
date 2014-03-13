# == Schema Information
#
# Table name: partners
#
#  id              :integer          not null, primary key
#  name            :string(255)
#  contact_number  :integer
#  information     :text
#  contact_address :text
#  image           :string(255)
#  menu            :string(255)
#  created_at      :datetime
#  updated_at      :datetime
#  partner_type    :string(255)
#

class Partner < ActiveRecord::Base
  # attr_accessible :contact_address, :contact_number, :image, :information, :menu, :name, :partner_type
  belongs_to :user
  mount_uploader :image , PartnerImageUploader
  mount_uploader :menu , PartnerMenuUploader
end
