class TeamsController < ApplicationController

  def index
    
  end
  
  def new
    @team = Team.new
  end

  def create
    @team = Team.new(team_params)
    if @team.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    
  end

  def edit
    @team = Team.find(params[:id])
  end

  def update
    @team = Team.find(params[:id])
    if @team.update(team_params)
      redirect_to root_path
    else  
      render :edit
    end
  end

  def delete
    @team = Team.delete
  end



  private

  def team_params
    params.require(:team).permit(:teamname, :level_id, :comment).merge(user_id: current_user.id)
  end

end
