class Api::V1::TeamsController < ApplicationController
    before_action :set_team, only: [:show, :update, :destroy]

    def index
        @teams = Team.all

        render json: @teams
    end

    def show
        render json: @team
    end

    def create
        @team = Team.new(team_params)

        if @team.save  
            render json: @team, status: :created
        else
            render json: @team.erros, status: :unprocessable_entity
        end
    end

    def update
        if @team.update(team_params)
            render json: @team
        else
            render json: @team.erros, status: :unprocessable_entity
        end        
    end

    def destroy 
        @team.destroy
    end

    private
    def set_team
        @team = Team.find(params[:id])
    end

    def team_params
        params.require(:team).permit(:name)
    end
end
