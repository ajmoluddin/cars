module Api
  module V1
    class MycarsController < ApplicationController
      def index
        mycars = Mycar.order('created_at ASC')

        if !mycars.empty?
          render json: { status: 'SUCCESS', message: 'Loaded all cars', data:mycars }, status: :ok
        else
          render json: { status: 'ERROR', message: 'No cars in inventory' }, status: :ok
        end
      end

      def show
        mycar = Mycar.where(id: params[:id])

        if !mycar.empty?
          render json: { status: 'SUCCESS', message: 'Loaded the car', data:mycar }, status: :ok
        else
          render json: { status: 'ERROR', message: 'Car not found' }, status: :unprocessable_entity
        end
      end

      def create
        mycar = Mycar.new(mycars_params)

        if mycar.save
          render json: { status: 'SUCCESS', message: 'New Car added', data:mycar }, status: :ok
        else
          render json: { status: 'ERROR', message: 'Car was not created', data:{errors:mycar.errors.full_messages} }, status: :unprocessable_entity
        end
      end

      def destroy
        if !Mycar.where(id: params[:id]).present?
          render json: { status: 'ERROR', message: 'Car does not exist' }, status: :unprocessable_entity
        elsif Mycar.destroy(params[:id])
          render json: { status: 'SUCCESS', message: 'Car was deleted from inventory' }, status: :ok
        else
          render json: { status: 'ERROR', message: 'Something went wrong try again' }, status: :ok
        end
      end

      def update
        mycar = Mycar.where(id: params[:id])

        if mycar.update(make: params[:make], model: params[:model], year: params[:year])
          render json: { status: 'SUCCESS', message: 'Car was updated', data:mycar }, status: :ok
        else
          render json: { status: 'ERROR', message: 'Car was not updated', data:{errors:mycar.errors.full_messages} }, status: :unprocessable_entity
        end
      end

      private

      def mycars_params
        params.permit(:make, :model, :year)
      end
    end
  end
end
