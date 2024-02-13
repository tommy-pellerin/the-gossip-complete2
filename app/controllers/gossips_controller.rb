class GossipsController < ApplicationController
    def index
      puts "$" * 60
      puts "Voici le param de la page welcome :"
      puts  params[:first_name]
      puts "$" * 60    
      @first_name = params[:first_name]
      @gossips = Gossip.all
      
    end

    def show
        puts "$" * 60
        puts "Voici le params de la page show :"
        puts  params[:id]
        puts "$" * 60    
        @id = params[:id]
        @gossip = Gossip.find(@id)
    end

    def new
      @gossip = Gossip.find(1)        
      
    end

    def create
      
      @user = User.find(11)
      puts "$" * 60
      puts "Voici les params de la page create :"
      puts params[:title]
      puts params[:content]      
      puts "$" * 60
      @gossip = Gossip.new(title:params[:title],content:params[:content],user:@user)
      
      if @gossip.save
        flash[:success] = "Le gossip a été créé correctement."
        redirect_to gossips_path
      else
        render 'gossips/new'
      end

    end
  
end
