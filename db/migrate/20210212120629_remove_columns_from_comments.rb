class RemoveColumnsFromComments < ActiveRecord::Migration[5.2]
  def change
    remove_column :comments, :user_id
    remove_column :comments, :picture_id
  end
end
