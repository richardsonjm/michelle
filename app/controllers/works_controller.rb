class WorksController < ApplicationController
  before_action :set_work, only: [:show, :edit, :update, :destroy]
  before_action :set_works
  before_action :authenticate, except: [:index, :show]
  before_action :set_authenticated, only: [:index, :show]

  def index
  end

  def show
  end

  def new
    @work = Work.new
  end

  def edit
  end

  def create
    @work = Work.new(work_params)

    respond_to do |format|
      if @work.save
        format.html { redirect_to @work, notice: 'Work was successfully created.' }
        format.json { render :show, status: :created, location: @work }
      else
        format.html { render :new }
        format.json { render json: @work.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @work.update(work_params)
        format.html { redirect_to @work, notice: 'Work was successfully updated.' }
        format.json { render :show, status: :ok, location: @work }
      else
        format.html { render :edit }
        format.json { render json: @work.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @work.destroy
    respond_to do |format|
      format.html { redirect_to works_url, notice: 'Work was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_work
      @work = Work.find_by_slug(params[:id])
    end

    def work_params
      params.require(:work).permit(:client, :campaign, :challange, :insight, :strategy, :results, :logo, works_images_attributes: [:image, :_destroy, :id])
    end

    def authenticate
      unless session[:auth_token] == ENV['AUTH_TOKEN']
        redirect_to root_url
      end
    end

    def set_authenticated
      @authenticated = (session[:auth_token] == ENV['AUTH_TOKEN'])
    end
end
