class ProfilsController < ApplicationController
  def index

  end
  def show
    @id = params[:id]
    @gossip = Gossip.find(params[:id])
    puts "%"*60    
    puts params
    puts "%"*60
  end
end
