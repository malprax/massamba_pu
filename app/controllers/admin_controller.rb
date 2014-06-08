class AdminController < ApplicationController
  before_action :authenticate_user!
  def index
  end
  
  def admin_berita_dpu
    @dpu_berita = DpuBeritum.all
  end
  
  def admin_sekilas_info
    @sekilas_infos = SekilasInfo.all
  end
  
  def admin_suara_rakyat
    @suara_rakyats = SuaraRakyat.all
  end
end
