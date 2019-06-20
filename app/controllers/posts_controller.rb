class PostsController < ApplicationController
  before_action :set_params, only: [:show, :edit, :update]
  before_action :current_user
  def index
    @posts = Post.all
    @sorted_posts = Post.all.order('created_at DESC')
  end

  def show
    @post = Post.find(params[:id])
    session[:post_id] = @post.id
    @comments = @post.comments
    @comment = Comment.new
  end


    def new
      @post = Post.new
      @comment = Comment.new(post_id: @post.id)
    end

    def create
      @post = Post.create(post_params)
      @post.user = @current_user
      if @post.save
        redirect_to @post
      else
        render :new
      end
    end


    def edit
    end

    def update
      if @post.update(post_params)
        redirect_to @post
      else
        render :edit
      end
    end

    def destroy
      @post = Post.find(session[:post_id])
      @post.delete
      redirect_to user_path
    end



private
  def post_params
    params.require(:post).permit(:title, :content, :user_id)

  end

  def set_params
    @post = Post.find(params[:id])
  end

end
