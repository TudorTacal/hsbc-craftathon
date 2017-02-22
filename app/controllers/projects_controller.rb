class ProjectsController < ApplicationController

  def new
    # Project.find(params[:user_id])
  end

  def create
    @project = Project.create(project_params)
  end

  def project_params
    params.require(:project).permit(:title, :description)
  end
end
