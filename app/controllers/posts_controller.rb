class PostsController < ApplicationController
  before_action :authenticate_user!, except: [ :index ]
  before_action :set_posts, only: %i[ index create ]

  def index
    @post = Post.new
  end

  def create
    @post = current_user.posts.new post_params
    if @post.save
      redirect_to root_path
    else
      render :index
    end
  end

  private
    def post_params
      params.require(:post).permit(:body)
    end

    def set_posts
      @posts = Post.select("posts.id, posts.body, posts.created_at, users.name AS user_name").joins(:user)
    end
end
