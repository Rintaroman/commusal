class CalendarsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :show]
  
  def index
    @calendars = Calendar.all
  end

  def new
    @calendar = Calendar.new
  end

  def create
    @calendar = Calendar.new(calendar_params)
    if @calendar.save
      redirect_to calendars_path
    else
      render :new
    end
  end
  
  def show
    @calendar = Calendar.find(params[:id])
    @join = Join.new
    @join_count= Join.count
  end

  def edit
    @calendar = Calendar.find(params[:id])
  end

  def update
    @calendar = Calendar.find(params[:id])
    if @calendar.update(calendar_params)
      redirect_to calendars_path
    else
      render :edit
    end
  end

  def destroy
      calendar = Calendar.find(params[:id])
      calendar.destroy
      redirect_to calendars_path
  end

  
  
  private
  
  def calendar_params
    params.require(:calendar).permit(:title,:date, :place, :prefecture_id, :cost, :recruitment, :deadline, :team_id)
  end


end