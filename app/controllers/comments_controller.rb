class CommentsController < ApplicationController
  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      redirect_to tool_path(@comment.tool)
    else
      @tool = @comment.tool
      @comments = @tool.comments
      render "tools/show"
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:text).merge(user_id: current_user.id, tool_id: params[:tool_id])
  end
end
