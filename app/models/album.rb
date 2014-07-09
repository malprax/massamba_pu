class Album < ActiveRecord::Base
  belongs_to :galery 
  has_attached_file  :image,
                     :storage => :dropbox,
                     :dropbox_credentials => "#{Rails.root}/config/dropbox.yml",                    
                      styles: { :medium => "300x300>"},
                     # :default_url => "/images/:style/missing.png", 
                     :dropbox_visibility => 'public',                    
                     :dropbox_options => {
                           :path => proc { |style| "#{style}/#{id}_#{image.original_filename}" }
                         }                    
  
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/ 
end
