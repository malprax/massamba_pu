class Galery < ActiveRecord::Base
  has_many :image, dependent: :destroy
end
