class AddNameToAccount < ActiveRecord::Migration[8.0]
  def change
    add_column :accounts, :name, :string
  end
end
