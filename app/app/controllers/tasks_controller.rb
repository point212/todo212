class TasksController < ApplicationController
  before_action :authenticate_user

  def show
    @tasks = Task.where(user_id: get_current_user.id)
  end

  def create
    task = Task.create task_params
    task.user_id = get_current_user.id
    if task.save 
      redirect_to task_url
    else
      flash[:alert] = task.errors.messages
      redirect_to new_task_url
    end
  end

  def new
    @task = Task.new
  end

  def update
  end
  
  def delete
    task = Task.find(:id)
    if task && get_current_user.id == task.user_id 
      task.destroy
    end
  end

  private
    def task_params
      params.require(:task).permit(:user_id, :summary, :status, :body)
    end

end
