class Product < ActiveRecord::Base
  attr_accessible :category_id, :distributor_name, :manufacturer_name, :photo, :price, :product_desc, :product_name, :product_num, :recommended, :url

  belongs_to :category
  has_many :reviews

  def to_param
    "#{self.id}-#{self.product_name.parameterize}"
  end

end
