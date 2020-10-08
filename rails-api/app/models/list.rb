class List < ApplicationRecord
  has_many :items_lists, dependent: :delete_all
  has_many :items, through: :items_lists
end
