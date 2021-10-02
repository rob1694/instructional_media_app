class ReferencesController < ApplicationController
    def index
        reference = Reference.all
        render json: reference
      end
end
