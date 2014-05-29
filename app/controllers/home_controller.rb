class HomeController < ApplicationController

  def index  
    @dpu_berita = DpuBeritum.all    
    @sekilas_infos = SekilasInfo.terbaru
    @suara_rakyats = SuaraRakyat.all
    
    # @pages = Page.all
    # @page = Page.find(params[:id])
    
  end
  def design
    
  end
end
