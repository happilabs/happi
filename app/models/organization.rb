class Organization < ActiveRecord::Base
  attr_accessible :dept, :org_name

  has_many :users

end
