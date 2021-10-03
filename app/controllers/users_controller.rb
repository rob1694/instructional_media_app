class UsersController < ApplicationController
       def index
        user = User.all
        render json: user
      end

      def show
        id = params[:id]
        user = User.find(id)
        render json: user
      end

      def create
        user = User.create(user_params)
        render json: user
      end
        
      def update
        id = params[:id]
        user = User.find(id)
        user.update(user_params)
        render json: user
      end
    
      def destroy
        id = params[:id]
        user = User.find(id)
        user.destroy
        render json: user
      end

      private

      def user_params
        params.require(:username)
      end
end
