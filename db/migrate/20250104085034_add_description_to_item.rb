class AddDescriptionToItem < ActiveRecord::Migration[8.0]
  def change
    add_column :items, :description, :text
  end
end
