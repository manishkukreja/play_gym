# == Schema Information
#
# Table name: categories
#
#  id            :integer          not null, primary key
#  category_name :string(255)
#  created_at    :datetime
#  updated_at    :datetime
#

class Categories < ActiveRecord::Base
  # attr_accessible :category_name
  has_one :activity , :dependent=> :destroy
end
