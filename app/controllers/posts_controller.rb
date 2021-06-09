class PostsController < ApplicationController

  def index
    @posts = Post.order(id: "DESC")
  end

  # コメントアウトする(実装準備)
  # def new
  # end

  def create
    Post.create(content: params[:content])
    redirect_to action: :index # 追記する(実装準備)
  end
end
