class Category < ActiveRecord::Base
  attr_accessible :name, :fair_price, :price_quantity, :first_quality, :second_quality, :third_quality, :youtube, :hl_logo, :paying_photo

  has_many :products

  def products_sorted_by_average_product_rating
    product_array = self.products.map! { |product| product }
    product_array.sort_by {|product| product.reviews.average("rating").to_f}.reverse
  end

  def products_sorted_alphabetically
    product_array = self.products.map! { |product| product }
    product_array.sort_by {|product| product.manufacturer_name}
  end
end
