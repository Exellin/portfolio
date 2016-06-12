class TagsController < ApplicationController 
  include ApplicationHelper 
  before_action :require_admin
  before_action :set_tag, only: [:edit, :update, :destroy]
  
  def new
    @tag = Tag.new
  end
  
  def edit
  end
  
  def update
    if @tag.update(tag_params)
      flash[:success] = "Tag was successfully updated"
      redirect_to root_path
    else
      render 'edit'
    end
  end
  
  def create
    @tag = Tag.new(tag_params)
    if @tag.save
      flash[:success] = "Tag was successfully created"
      redirect_to root_path
    else
      render 'new'
    end
  end
  
  def destroy
    @tag.destroy 
    flash[:danger] = "Tag was successfully deleted"
    redirect_to root_path
  end
  
  private
  def tag_params
    params.require(:tag).permit(:name, :project_id)
  end
  
  def set_tag
    @tag = Tag.find(params[:id])
  end
end