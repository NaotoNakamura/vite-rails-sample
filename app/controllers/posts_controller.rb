class PostsController < ApplicationController
  before_action :authenticate_user!, except: [ :index ]

  def index
    @posts = Post.includes(:user)
    @post = Post.new
  end

  def create
    current_user.posts.create! post_params
    redirect_to root_path
  end

  private
    def post_params
      params.require(:post).permit(:body)
    end
end
