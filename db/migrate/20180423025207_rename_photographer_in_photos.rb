class RenamePhotographerInPhotos < ActiveRecord::Migration[5.2]
  def change
    rename_column :photos, :photographer, :user
  end
end
