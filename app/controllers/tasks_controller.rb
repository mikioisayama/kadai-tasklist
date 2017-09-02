class TasksController < ApplicationController
  def index
    @Task =Task.all
  end

  def show
    @Task =Task.find(params[:id])
  end

  def new
    @Task =Task.new
  end

  def create
    @Task = Task.new(task_params)

    if @Task.save
      flash[:success] = 'タスク が正常に投稿されました'
      redirect_to @Task
    else
      flash.now[:danger] = 'タスク が投稿されませんでした'
      render :new
  end

  def edit
    @Task =Task.find(params[:id])
  end

  def update
  end

  def destroy
  end
end
