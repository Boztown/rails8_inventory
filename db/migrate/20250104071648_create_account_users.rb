class CreateAccountUsers < ActiveRecord::Migration[8.0]
  def change
    create_table :account_users do |t|
      t.references :account, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
