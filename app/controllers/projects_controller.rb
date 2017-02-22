class ProjectsController < ApplicationController

  def new
    @project = Project.new
  end

  def create
    @project = Project.create(project_params)
  end

  def project_params
    params.require(:project).permit(:title, :description)
  end
end
