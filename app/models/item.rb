#app/models/item.rb
class Item < ApplicationRecord
  belongs_to :user
  validates :name, presence: true
end
