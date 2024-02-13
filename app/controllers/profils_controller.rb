class ProfilsController < ApplicationController
  def index

  end
  def show
    @profil_page_id = params[:id]
    @gossip = Gossip.find(@profil_page_id)
    puts "%"*60
    puts @profil_page_id
    puts params
    puts "%"*60
  end
end
