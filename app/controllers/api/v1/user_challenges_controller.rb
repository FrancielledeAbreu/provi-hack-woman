module Api::V1
  class UserChallengesController < ActionController::API
    
    def index      
      render json: UserChallenge.all
    end

    def create
      challenge = Challenge.find( user_challenge_params[:challenge_id])
      user = User.find( user_challenge_params[:user_id])
      user_challenge = UserChallenge.new(user_challenge_params)

      if user_challenge.save
        render json: user_challenge, status: 201
      else
        render json: user_challenge.errors.messages, status: 422
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