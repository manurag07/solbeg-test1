class CommentsController < ApplicationController
  def create
    @blog = Blog.find(params[:blog_id])
    comment = @blog.comments.new(comment_params)
    if comment.save
      flash[:notice] = 'You have successfully added the comment'
    else
      flash[:alert] = comment.errors.full_messages
    end
    redirect_to @blog
  end

  private

  def comment_params
    params.permit(:comment, :blog_id, :user_id)
  end
end
