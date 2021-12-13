class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :rentals
  has_many :products



  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
table,
    acts_as_token_authenticable # add this status
    [...]

end
