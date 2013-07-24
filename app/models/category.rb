class Category < ActiveRecord::Base
  attr_accessible :name, :fair_price, :price_quantity, :first_quality, :second_quality, :third_quality

  has_many :products
end
