module Api::V1
  class ChallengesController < ActionController::API
    # before_action :load_user_challenge, only: [:show, :update, :delete]

    def index      
      render json: User_challenge.all
    end

    def show
      render json: @user_challenge
    end

    def create 
      if @challenge.find(params[:id])
        user_challenge = User_challenge.new(user_challenge_params)
         if user_challenge.save
            render json: user_challenge, status: 201
         end
      else
        render json: challenge.errors.messages, status: 422
      end
    end


    private
    def load_user_challenge
      @user_challenge = user_challenge.find(params[:id])
    end

    def user_challenge_params
      params.require(:user_challenge).permit(
        :challenge_id, :user_id, :url
              )
    end
  end
end