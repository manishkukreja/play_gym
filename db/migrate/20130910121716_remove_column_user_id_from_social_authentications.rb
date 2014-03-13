class RemoveColumnUserIdFromSocialAuthentications < ActiveRecord::Migration
  def up
  	remove_column :social_authentications , :user_id
  end

  def down
  end
end
