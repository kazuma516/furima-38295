class Item < ApplicationRecord
  belongs_to :user
  has_one    :oder

  has_one_attached :image
end
