class OrderProduct < ApplicationRecord
  belongs_to :order
  belongs_to :product

  validates :product_id, presence: true 
  validates :quantity, presence: true, numericality: { in: 1..20 } 

  delegate :name, :name_and_price_text, :price,  to: :product
  delegate :price, to: :product

  def order_price
    price * quantity
  end
end