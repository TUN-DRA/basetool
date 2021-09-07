class FavoritesController < ApplicationController
  def create
    tool = Tool.find(params[:tool_id])
    favorite = current_user.favorites.new(tool_id: tool.id)
    favorite.save
    redirect_to tool_path(tool)
  end
  
  def destroy
    tool = Tool.find(params[:tool_id])
    favorite = current_user.favorites.find_by(tool_id: tool.id)
    favorite.destroy
    redirect_to tool_path(tool)
  end
end
