class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :paying_customer, :first_name, :last_name, :admin, :organization_id, :role, :address, :address_2, :city, :zip, :phone, :website_url, :subscription_level, :organization
  # attr_accessible :title, :body

  has_many :user_voices
  # belongs_to :organization
  has_many :reviews

  after_create :send_registration_email

  def send_registration_email
    UserMailer.registration_email(self).deliver
  end

  #write boolean method to see if logged in user is a paying customer
end
