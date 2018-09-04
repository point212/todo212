class TasksController < ApplicationController
  def show
    @tasks = Task.all
  end

  def create
    Task.create params
  end

  def new
  end

end
