class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
   attr_accessible :password, :password_confirmation, :remember_me, :email
   validates_presence_of :email, :password
   validates_confirmation_of :password  
end
