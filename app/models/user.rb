class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :company_name, :full_name
  attr_accessible :password, :password_confirmation, :remember_me  

  # attr_accessible :title, :body

  has_one :company

  def full_name
    read_attribute(:full_name).empty?? email : read_attribute(:full_name)
  end
end