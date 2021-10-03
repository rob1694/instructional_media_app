class ReferencesController < ApplicationController
    def index
        reference = Reference.all
        render json: reference
      end

      def show
        id = params[:id]
        reference = Reference.find(id)
        render json: reference
      end

      def create
        reference = Reference.create(reference_params)
        render json: reference
      end
        
      def update
        id = params[:id]
        reference = Reference.find(id)
        reference.update(reference_params)
        render json: reference
      end
    
      def destroy
        id = params[:id]
        reference = Reference.find(id)
        reference.destroy
        render json: reference
      end

      private

      def reference_params
        params.require(:post_id, :href)
      end
end
