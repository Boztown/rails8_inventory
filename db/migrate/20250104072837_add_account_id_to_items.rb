class AddAccountIdToItems < ActiveRecord::Migration[8.0]
  def change
    add_reference :items, :account, null: false, foreign_key: true
  end
end
