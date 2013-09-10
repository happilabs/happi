class Category < ActiveRecord::Base
  attr_accessible :name, :fair_price, :price_quantity, :first_quality, :second_quality, :third_quality

  has_many :products

  def products_sorted_by_average_product_rating
    sorted_array = []
    product_array = self.products.map! do |product|
      product
    end

    product_array.sort_by {|product| product.reviews.average("rating").to_f}.reverse
  end
end
