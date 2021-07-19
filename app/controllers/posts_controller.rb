class PostsController < ApplicationController

  def index
    @posts = Post.order(id: "DESC")
  end

  # def new
  # end

  def create
    post = Post.create(content: params[:content])
    # redirect_to action: :index  ← 同期通信の記述
    render json:{ post: post }
    #←非同期通信の記述
  end
end
