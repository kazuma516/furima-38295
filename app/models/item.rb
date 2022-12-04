class Item < ApplicationRecord 
  extend ActiveHash::Associations::ActiveRecordExtensions 
  belongs_to :user
  #has_one    :order


    belongs_to :category
    belongs_to :prefecture
    belongs_to :item_condition
    belongs_to :postage_type
    belongs_to :preparation_day



  has_one_attached :image

  with_options presence: true do
    validates :image
    validates :name
    validates :introduction
    validates :category_id
    validates :item_condition_id
    validates :postage_type_id
    validates :prefecture_id
    validates :preparation_day_id

    validates :price, numericality: {greater_than_or_equal_to: 300,less_than_or_equal_to: 9_999_999 }
    validates :price, numericality: { only_integer: true }
end


with_options numericality: { other_than: 0 } do
  validates :category_id
  validates :prefecture_id
  validates :item_condition_id
  validates :postage_type_id
  validates :preparation_day_id
end
end