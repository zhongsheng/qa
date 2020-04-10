require_dependency "qa/application_controller"

module Qa
  class TasksController < ApplicationController
    before_action :set_task, only: [:show, :edit, :update, :destroy]
    before_action :set_theme

    # GET /tasks
    def index
      @tasks = Task.all
    end

    # GET /tasks/1
    def show
      @talk = Talk.new
    end

    # GET /tasks/new
    def new
      @task = Task.new
    end

    # GET /tasks/1/edit
    def edit
    end

    # POST /tasks
    def create
      @task = Task.new(task_params)
      @task.theme_id = @theme.id
      @task.user_id = current_user.id

      if @task.save
        redirect_to theme_task_url(@theme, @task), notice: 'Task was successfully created.'
      else
        render :new
      end
    end

    # PATCH/PUT /tasks/1
    def update
      if @task.update(task_params)
        redirect_to @task, notice: 'Task was successfully updated.'
      else
        render :edit
      end
    end

    # DELETE /tasks/1
    def destroy
      @task.destroy
      redirect_to tasks_url, notice: 'Task was successfully destroyed.'
    end

    private
    # Use callbacks to share common setup or constraints between actions.
    def set_task
      @task = Task.find(params[:id])
    end

    def set_theme
      @theme = Theme.find(params[:theme_id])
    end
    # Only allow a trusted parameter "white list" through.
    def task_params
      params.require(:task).permit(:name, :deadline, :tag_ids, :user_id)
    end
  end
end
