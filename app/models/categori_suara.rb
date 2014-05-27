class CategoriSuara < ActiveRecord::Base
  # attr_accessible :jenis_suara
    # belongs_to :suara_rakyat  
    has_many :suara_rakyats, dependent: :destroy
    
end
