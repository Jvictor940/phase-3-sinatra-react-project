class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table "users" do |t|
      t.string :full_name
      t.string :country_of_residence
      t.timestamps
    end
  end
end
