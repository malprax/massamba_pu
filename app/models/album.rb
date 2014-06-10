class Album < ActiveRecord::Base
  belongs_to :gallery  
  attr_accessor :image
  has_attached_file  :image,
                     storage: :dropbox, 
                     dropbox_credentials: Rails.root.join("config/dropbox.yml"), 
                     dropbox_visibility: 'pu_lutra',
                     styles: { :medium => "640x640>", :thumb => "100x100>" }, 
                     default_url: ":style/user.jpg"
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/                   
  
end
