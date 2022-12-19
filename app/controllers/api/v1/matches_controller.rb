class Api::V1::MatchesController < ApplicationController
    before_action :set_match, only: [:show, :update, :destroy]

    def index
        @matches = Match.all

        render json: @matches
    end

    def show
        render json: @match
    end

    def create
        @match = Match.new(match_params)

        if @match.save  
            render json: @match, status: :created
        else
            render json: @match.erros, status: :unprocessable_entity
        end
    end

    def update
        if @match.update(match_params)
            render json: @match
        else
            render json: @match.erros, status: :unprocessable_entity
        end        
    end

    def destroy
        @match.destroy
    end

    private
    def set_match
        @match = match.find(params[:id])
    end

    def match_params
        params.require(:match).permit(:name)
    end
end
