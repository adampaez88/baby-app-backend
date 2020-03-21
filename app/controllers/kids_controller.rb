class KidsController < ApplicationController
    before_action :authenticate, only: [:create]
    def index
        kids = Kid.all
        render json: kids
    end

    def create
        kid = Kid.create(
            name: params[:name],
            age: params[:age],
            user: @user
        )
        render json: kid
    end
end
