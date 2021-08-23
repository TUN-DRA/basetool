class ToolsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]

  #before_action :set_item, only: [:show, :edit, :update, :destroy]

  #before_action :move_to_index, only: [:edit, :update, :destroy]

  def index
    @tools = Tool.includes(:user).order('created_at DESC')
  end

  def new
    @tool = Tool.new
  end

  def create
    @tool = Tool.new(tool_params)
    if @tool.valid?
      @tool.save
      redirect_to root_path
    else
      render :new
    end
  end

  def destroy
    tool = Tool.find(params[:id])
    tool.destroy
  end

  def edit
    @tool = Tool.find(params[:id])
  end

  def update
    tool = Tool.find(params[:id])
    tool.update(tool_params)
  end

  def show
    #@comment = Comment.new
    #@comments = @tweet.comments.includes(:user)
  end

  private

  def tool_params
    params.require(:tool).permit(:tool_name, :maker_id, :price, :purchase_date, :category_id, :detail, :size, :weight, :part_number, :purchase_store, :evaluation_id, :image).merge(user_id: current_user.id)
  end

  def set_tool
    @tool = Tool.find(params[:id])
  end

  def move_to_index
    redirect_to root_path unless current_user == @tool.user
  end
end
