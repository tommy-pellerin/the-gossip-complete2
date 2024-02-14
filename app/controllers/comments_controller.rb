class CommentsController < ApplicationController
  def index
    @comments = Comment.all
  end

  def new    
    @comment = Comment.new
    puts "%"*50
    puts "Dans new :"
    puts params
    puts "%"*50    
  end

  def create
    puts "%"*50
    puts "Lorsque je soumet la création :"
    puts params
    puts "%"*50
    @comment = Comment.new(content:,user:,gossip:)
    # if @comment.save
    #   redirect_to @comment
    # else
    #   render :new, status: :unprocessable_entity
    # end
  end

  
end
