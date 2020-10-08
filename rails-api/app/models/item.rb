class Item < ApplicationRecord
  has_many :items_lists, dependent: :delete_all
  has_many :lists, through: :items_lists
end
