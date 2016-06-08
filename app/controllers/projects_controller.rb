class ProjectsController < ApplicationController
  include ApplicationHelper
  before_action :require_admin, except: [:index]
  before_action :set_project, only: [:edit, :update, :destroy]
  
  def index
    @projects = Project.all
  end
  
  def new
    @project = Project.new
  end
  
  def edit
  end
  
  def update
    if @project.update(project_params)
      flash[:success] = "Project was successfully updated"
      redirect_to projects_path
    else 
      render 'edit'
    end
  end
  
  def create
    @project = Project.new(project_params)
    if @project.save
      flash[:success] = "Project was successfully created"
      redirect_to projects_path
    else
      render 'new'
    end
  end
  
  def destroy 
    @project.destroy
    flash[:danger] = "Project was successfully deleted"
    redirect_to projects_path
  end
  
  private
  def project_params
    params.require(:project).permit(:title, :website_url, :github_url, :description, :picture_link)
  end
  
  def set_project
    @project = Project.find(params[:id])
  end
end