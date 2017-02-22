class ProjectsController < ApplicationController

  def index
    @projects = Project.all
  end
  def new
    @project = Project.new
  end

  def create
    user = current_user
    @project = user.projects.create(project_params)
    redirect_to projects_path
  end

  def edit
    @project = Project.find(params[:id])
    count = @project.endorsement + 1
    @project.update(endorsement: count)
    redirect_to projects_path
  end

  def update
    @project = Project.find(params[:id])
    count = @project.update
    @project.update(endorsement: count)
  end

  def project_params
    params.require(:project).permit(:title, :description)
  end
end
