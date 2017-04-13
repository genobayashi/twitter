class AddAnyToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :name, :string
    add_column :users, :user_name, :string
    add_column :users, :phone_number, :string
    add_column :users, :introduction, :string
    add_column :users, :birthday, :string
    add_column :users, :from, :string
    add_column :users, :profile_image, :string
    add_column :users, :background_image, :string
  end
end
