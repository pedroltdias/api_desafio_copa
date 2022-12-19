class Api::V1::MatchTeamsController < ApplicationController
    before_action :set_match_team, only: [:show, :update, :destroy]

    def index
        @matches_teams = MatchTeam.all

        render json: @matches_teams
    end

    def show
        render json: @match_team
    end

    def create
        @match_team = MatchTeam.new(match_team_params)

        if @match_team.save  
            render json: @match_team, status: :created
        else
            render json: @match_team.erros, status: :unprocessable_entity
        end
    end

    def update
        if @match_team.update(match_team_params)
            render json: @match_team
        else
            render json: @match_team.erros, status: :unprocessable_entity
        end        
    end

    def destroy
        @match_team.destroy
    end

    private
    def set_match_team
        @match_team = MatchTeam.find(params[:id])
    end

    def match_team_params
        params.require(:match_team).permit(:name, :team_id, :match_id)
    end
end
