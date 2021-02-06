module Api::V1
  class ChallengesController < ActionController::API
    before_action :load_challenge, only: [:show, :update, :delete]
    def index      
      render json: Challenge.all
    end

    def show
      render json: @challenge
    end

    def create
      challenge = Challenge.new(challenge_params)
      if challenge.save
         render json: challenge, status: 201
      else
        render json: challenge.errors.messages, status: 422
      end
    end

    def update      
      if @challenge.update(challenge_params)
        render json: @challenge
      else
        render json: @challenge.errors.messages, status: 422
      end
    end

    def destroy
      if @challenge.inactive!
        render json: { message: 'Challenge deleted' }
      else 
        render json: @challenge.errors.messages, status: 422
      end  
    end

    private
    def load_challenge
      @challenge = Challenge.find(params[:id])
    end

    def challenge_params
      params.require(:challenge).permit(
        :name, :description, :level, :challenges_type
      )
    end
  end
end