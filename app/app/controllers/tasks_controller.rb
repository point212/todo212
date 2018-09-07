class TasksController < ApplicationController
  before_action :authenticate_user

  def show
    @tasks = Task.all
  end

  def create
    Task.create params
  end

  def new
  end

end
