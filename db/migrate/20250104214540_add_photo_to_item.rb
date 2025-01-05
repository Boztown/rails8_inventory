class AddPhotoToItem < ActiveRecord::Migration[8.0]
  def change
    add_column :items, :photo, :string
  end
end
