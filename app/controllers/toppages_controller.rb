class ToppagesController < ApplicationController
  def index
    if logged_in?
      @user = current_user
      @task = current_user.tasks.build  # form_for 用
      @task = current_user.tasksk.order('created_at DESC').page(params[:page])
    end
  end
end
