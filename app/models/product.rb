class Product < ActiveRecord::Base
  attr_accessible :category_id, :distributor_name, :manufacturer_name, :photo, :price, :product_desc, :product_name, :product_num, :recommended, :url
end
