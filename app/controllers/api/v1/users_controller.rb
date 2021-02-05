module Api::V1
  class UsersController < ActionController::API
    before_action :load_user, only: [:show, :update]

    def create
      user = User.new(user_params)

      if user.save
        render json: user, status: 201
      else
        render json: user.errors.messages, status: 422
      end
    end

    def index
      render json: User.all
    end

    def show
      render json: @user
    end

    def update
      if @user.update(user_params)
        render json: @user
      else
        render json: @user.errors.messages, status: 422
      end
    end

    private

    def user_params
      params.require(:user).permit(
        :birthdate, :email, :experience, :job, :name, :password
      )
    end

    def load_user
      @user = User.find(params[:id])
    end
  end
end