class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable, :timeoutable, :timeout_in => 30.minutes
         
   # attr_accessible :password, :password_confirmation, :remember_me, :email
   validates_presence_of :email, :password
   validates_confirmation_of :password  
end
