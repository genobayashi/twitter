class Category < ApplicationRecord
  has_many :user_categories
  has_many :users, through: :user_categories
  accepts_nested_attributes_for :users
end
