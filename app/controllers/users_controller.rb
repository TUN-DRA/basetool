class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @tools = @user.tools.order('created_at DESC')
  end
end
