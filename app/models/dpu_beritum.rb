class DpuBeritum < ActiveRecord::Base
  # information table :title, :content, :permalink  
  validates :title, :content, presence: true, length: {minimum: 10} 
 
end
