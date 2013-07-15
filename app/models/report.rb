class Report < ActiveRecord::Base
  attr_accessible :html_link, :link, :summary, :title
end
