class CreateUserAccounts < ActiveRecord::Migration[6.1]
  def change
    create_table :user_accounts do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :password
      t.string :password_hint

      t.timestamps
    end
  end
end
