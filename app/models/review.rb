class Review < ActiveRecord::Base
  attr_accessible :admin_approved, :desc, :make_anonymous, :rating, :user_id, :user_recommended
end
