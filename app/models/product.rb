class Product < ActiveRecord::Base
  attr_accessible :category_id, :photo, :product_number, :summary, :title
end
