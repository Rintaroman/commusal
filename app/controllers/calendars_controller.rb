class CalendarsController < ApplicationController
  def index
    @calendars = Calendar.all
  end

  def new
    @calendar = Calendar.find(params[:id])
    @join = Join.new
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
  end
  
  private
  
  def calendar_params
    params.require(:calendar).permit(:title,:date, :place, :prefecture_id, :cost, :recruitment, :deadline, :team_id)
  end


end