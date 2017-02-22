class ProjectsController < ApplicationController

  def new
    @project = Project.new
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
