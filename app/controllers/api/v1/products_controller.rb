module Api::V1
  class ProductsController < ActionController::API
    def index
      render json: { messaage: 'akjhdkasjhd', price: 10}
    end
  end
end