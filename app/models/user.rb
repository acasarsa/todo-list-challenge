class User < ApplicationRecord
  has_many :lists
  has_many :todo_items, through: :lists
end
