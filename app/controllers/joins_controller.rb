class JoinsController < ApplicationController

  def new
    @join = Join.new
    @calendar = Calendar.find(params[:calendar_id])
  end

  def create
    binding.pry
    @join = Join.new(join_params)
      if @join.save
        redirect_to root_path
      else
        render :new
      end
  end

  private

  def join_params
    params.require(:join).permit(:team_id)
  end


end
