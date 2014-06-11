class Album < ActiveRecord::Base
  belongs_to :gallery    
  has_attached_file  :image,
                     storage: :dropbox, 
                     dropbox_credentials: Rails.root.join("config/dropbox.yml"), 
                     dropbox_visibility: 'public',
                     styles: { :medium => "640x640>", :thumb => "100x100>" }, 
                     default_url: ":style/user.jpg",
                     :dropbox_options => {
                           :path => proc { |style| "#{style}/#{id}_#{image.original_filename}" }
                         },
                     :path => ":rails_root/public/assets/images/:id/:style/:basename.:extension"                
   validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/ 
end
