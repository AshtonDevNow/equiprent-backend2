class User < ActiveRecord::Base
  acts_as_token_authenticatable
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :rentals
  has_many :products



  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable



end
