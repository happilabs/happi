class UserVoice < ActiveRecord::Base
  attr_accessible :user_id, :message

  belongs_to :user

  validates :message, :presence => {:message => 'Voice field cannot be blank, Please re-enter your text'}
end
