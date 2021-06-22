class TeamsController < ApplicationController
    before_action :set_team, only: [:show]


    def index
        @teams = Team.all

        render json: @teams
    end

    def show
        set_team
        render json: @team
    end

    def create
        @team = Team.new(team_params)

        if @team.save
            render json: @team, status: :created, location: @team
        else
            render json: @team.errors, status: :unprocessable_entity
        end
    end

    def getFromApi
        teamsResp = RestClient.get('https://www.thesportsdb.com/api/v1/json/1/search_all_teams.php?l=English%20Premier%20League')
        results = JSON.parse(teamsResp)["teams"]

        @teams = results
        render json: @teams
    end

    private

    def set_team
        @team = Team.find(params[:id])
    end

    def team_params
        params.require(:team).permit(:name, :image, :description, :stadium, :stadium_img, :website, :banner, :youtube, :jersey, :average_score)
    end
    
end