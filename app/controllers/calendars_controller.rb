class CalendarsController < ApplicationController
  def index
    @calendars = Calendar.all
  end

  def new
    @calendar = Calendar.new
  end

  def create
    @calendar = Calendar.new(calendar_params)
    binding.pry
    if @calendar.save
      redirect_to calendars_path
    else
      render :new
    end
  end
  
  def show
    @calendar = Calendar.find(params[:id])
  end
  
  private
  
  def calendar_params
    params.require(:calendar).permit(:title,:date, :place, :prefecture_id, :cost, :recruitment, :deadline).merge(team_id: params[:team_id])
  end


end