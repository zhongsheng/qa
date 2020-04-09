require_dependency "qa/application_controller"

module Qa
  class TalksController < ApplicationController
    before_action :set_talk, only: [:show, :edit, :update, :destroy]

    # GET /talks
    def index
      @talks = Talk.all
    end

    # GET /talks/1
    def show
    end

    # GET /talks/new
    def new
      @talk = Talk.new
    end

    # GET /talks/1/edit
    def edit
    end

    # POST /talks
    def create
      @talk = Talk.new(talk_params)
      @task = Task.find talk_params[:task_id]

      if @talk.save
        redirect_to theme_task_url(@task.theme_id, @task), notice: 'Talk was successfully created.'
      else
        render :new
      end
    end

    # PATCH/PUT /talks/1
    def update
      if @talk.update(talk_params)
        redirect_to @talk, notice: 'Talk was successfully updated.'
      else
        render :edit
      end
    end

    # DELETE /talks/1
    def destroy
      @talk.destroy
      redirect_to talks_url, notice: 'Talk was successfully destroyed.'
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_talk
        @talk = Talk.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def talk_params
        params.require(:talk).permit(:content, :user_id, :task_id)
      end
  end
end
