class CreateAccounts < ActiveRecord::Migration[6.1]
  def change
    create_table "accounts" do |t|
      t.string :label
      t.float :balance
      t.string :account_type
      t.integer :bank_id
      t.integer :user_id
      t.timestamps
    end
  end
end
