class ProjectsController < ApplicationController

  def new
    # Project.find(params[:user_id])
  end

  def create
    @project = Project.create(project_params)
  end

  def show
    @projects = Project.find_by(:user_id)
  end

  def project_params
    params.require(:project).permit(:title, :description)
  end
end
