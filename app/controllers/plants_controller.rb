class PlantsController < ApplicationController
    def index
        plants = Plant.all
        render json: plants
      end
    
      # GET /birds/:id
      def show
       plant = Plant.find_by(id: params[:id])
        if bird
          render json: plant
        else
          render json: { error: "Bird not found" }, status: :not_found
        end
      end
      def create
        plant = Plant.create(bird_params)
        render json: plant, status: :created
      end
    
      # other controller actions here
    
      private
      # all methods below here are private
    
      def bird_params
        params.permit(:name, :image, :price)
      end
end
