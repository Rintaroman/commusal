class JoinsController < ApplicationController

  def new
    @join = Join.new
    @calendar = Calendar.find(params[:calendar_id])
  end

  def create
    @join = Join.new(join_params)
      if @join.save
        redirect_to root_path
      else
        redirect_to new_calendar_join_path
      end
  end

  private

  def join_params
    params.require(:join).permit(:team_id).merge(calendar_id: params[:calendar_id])
  end


end
