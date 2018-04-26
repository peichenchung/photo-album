class RemoveUserFromPhotos < ActiveRecord::Migration[5.2]
  def change
    remove_column :photos, :user
  end
end
