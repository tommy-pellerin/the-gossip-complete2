class CommentsController < ApplicationController
  def index
    puts "%"*50
    puts "Dans index comment :"
    puts params
    puts "%"*50 
    @comments = Comment.all
    @gossip = Gossip.find(params[:gossip_id])
  end

  def new    
    @comment = Comment.new
    puts "%"*50
    puts "Dans new comment :"
    puts params
    puts "%"*50    
  end

  def create
    puts "%"*50
    puts "Lorsque je soumet la création du commentaire :"
    puts params    
    puts "%"*50
    @gossip = Gossip.find(params[:gossip_id])
    @comment = Comment.new(content:params[:content],user:@gossip.user,gossip:@gossip)
    if @comment.save
      redirect_to @gossip
    else
      render "gossip/show", status: :unprocessable_entity
    end
  end

  
end
