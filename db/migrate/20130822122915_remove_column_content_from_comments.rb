class RemoveColumnContentFromComments < ActiveRecord::Migration
  def up
  	remove_column :comments , :content
  end

  def down
  end
end
