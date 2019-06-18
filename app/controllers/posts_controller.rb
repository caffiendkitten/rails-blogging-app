class PostsController < ApplicationController
  before_action :set_params, only: [:show, :edit, :update]

  # not working yet
  def index
    @posts = Post.all
    # byebug
  end

  def show
    # @post = @post.find(params[:id])
  end


    def new
      @post = Post.new
    end

    def create

      @post = Post.create(post_params)
      byebug
      if @post.save
        byebug
        redirect_to @post
      else
        render :new
      end
    end
    #
    # def edit
    # end

    def update
      if @post.update(post_params)
        # byebug
        redirect_to @post
      else
        render :edit
      end
    end



private
  def post_params
    params.require(:post).permit(:title, :content, :user_id)

  end

  def set_params
    @post = Post.find(params[:id])
  end

end
