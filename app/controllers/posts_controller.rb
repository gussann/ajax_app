class PostsController < ApplicationController

  def index
    @posts = Post.order(id: "DESC")
  end

  # コメントアウトする(実装準備)
  # def new
  # end

  def create
    post = Post.create(content: params[:content])
    render json:{ post: post}
  end
end
