class DpuBeritum < ActiveRecord::Base
  # information table :title, :content, :permalink  
  validates :title, :content, :permalink, presence: true, length: {minimum: 10} 
 
end
