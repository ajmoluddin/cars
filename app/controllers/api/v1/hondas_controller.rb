module Api
  module V1
    class HondasController < ApplicationController
      def index
        hondas = Honda.order('created_at DESC')
      end

      def show
      end

      def create
      end

      def delete
      end

      def update
      end

      private

      def hondas_params
        params.permit(:mycars_id, :transmission, :vehicle_type)
      end

      def set_mycar
        @mycar = Mycar.find(params[:mycar_id])
      end
    end
  end
end
