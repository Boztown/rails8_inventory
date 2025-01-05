class RemovePhotoFromItem < ActiveRecord::Migration[8.0]
  def change
    remove_column :items, :photo
  end
end
