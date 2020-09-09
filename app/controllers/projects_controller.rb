class ProjectsController < ApplicationController
  before_action :set_project, only: [:show, :update, :destroy]

  def index
    paginate json: Project.all, per_page: params[:per_page] || Project::PER_PAGE
  end

  def show
    render json: @project
  end

  def create
    @project = Project.new(project_params)

    if @project.save
      render json: @project, status: :created
    else
      render json: @project.errors, status: :unprocessable_entity
    end
  end

  def update
    if @project.update(project_params)
      render json: @project
    else
      render json: @project.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @project.destroy
  end

  private
    def set_project
      @project = Project.find(params[:id])
    end

    def project_params
      params.fetch(:project).permit(:name, :description, :start_date, :end_date, :budget_amount, :estimated_amount, :total_amount)
    end
end
