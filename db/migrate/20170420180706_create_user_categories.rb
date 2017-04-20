class CreateUserCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :user_categories do |t|
      t.references :user, foreign_key: true
      t.integer    :category_id
      t.timestamps
    end
  end
end
