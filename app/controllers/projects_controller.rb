class ProjectsController < ApplicationController
  def dashboard
    if params[:status].present?
      @projects = Project.where('status = ?', params[:status])
    else
      @projects = Project.all
    end
  end

  def create
    @project = Project.create(name: params[:name],
                              description: params[:description],
                              start_date: params[:start_date],
                              end_date: params[:end_date],
                              status: params[:status])
  end

  def new
    @project = Project.new
  end
end