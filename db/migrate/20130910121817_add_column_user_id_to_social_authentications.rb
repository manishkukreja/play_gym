class AddColumnUserIdToSocialAuthentications < ActiveRecord::Migration
  def change
    add_column :social_authentications, :user_id, :integer
  end
end
