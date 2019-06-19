class CommentsController < ApplicationController

    def new
        @comment = Comment.new
    end

    def create
        # byebug
        @post = Post.find(session[:post_id])
        @commment = @post.comments.create(comment_params)
        redirect_to @post
    end

    private 

    def comment_params
        params.require(:comment).permit(:content, :post_id)
    end
end
