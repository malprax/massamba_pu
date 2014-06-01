class Page < ActiveRecord::Base
  # information table :name, :content, :permalink, :picture_id
  validates :name, :content, :permalink, presence: true, length:{minimum: 5}
  
end
