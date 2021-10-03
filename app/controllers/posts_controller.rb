class PostsController < ApplicationController
    def index
        post = Post.all
        render json: post
      end

      def show
        id = params[:id]
        post = Post.find(id)
        render json: post
      end

      def create
        post = Post.create(post_params)
        render json: post
      end
        
      def update
        id = params[:id]
        post = Post.find(id)
        post.update(post_params)
        render json: post
      end
    
      def destroy
        id = params[:id]
        post = Post.find(id)
        post.destroy
        render json: post
      end
  
      private
  
      def post_params
        params.require(:user_id, :title, :description, :steps)
    end
  
end
