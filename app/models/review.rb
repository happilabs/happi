class Review < ActiveRecord::Base
  attr_accessible :product_id, :rating, :review, :user_id
end
