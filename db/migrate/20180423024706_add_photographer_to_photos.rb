class AddPhotographerToPhotos < ActiveRecord::Migration[5.2]
  def change
    add_column :photos, :photographer, :string
  end
end
