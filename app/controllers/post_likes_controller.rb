class PostLikesController < ApplicationController

    def new
        @post = Post.find(params[:post_id])
        @like = PostLike.create(user_id: params[:user_id],post_id: params[:post_id])
        # redirect_to posts_path
        redirect_back(fallback_location: posts_path)
    end
end
