class PostsController < ApplicationController

  #indexアクションを定義するindexメソッド
  def index
    @posts = Post.all.order(id: "DESC")
  end

  def create
    Post.create(content: params[:content])
    redirect_to action: :index
  end
  
end
