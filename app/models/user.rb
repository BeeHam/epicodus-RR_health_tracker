class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :foods
  has_many :exercises
  validates_presence_of :username

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
        #  , :authentication_keys => [:login]



  # def login=(login)
  #   @login = login
  # end
  #
  # def login
  #   @login || self.username || self.email
  # end



end
