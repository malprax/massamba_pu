class HomeController < ApplicationController

  def index   
    @page = Page.find_by_id(1)
    
  end
  def design
    
  end
end
