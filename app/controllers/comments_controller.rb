class CommentsController < ApplicationController
  before_action :set_post

  def create
    @post.comments.create! rarams.required(:comment).premit(:content)
     redirect_to @post
  end

  private
    def set_post
      @post = Post.find(params[:post_id])
    end
end
