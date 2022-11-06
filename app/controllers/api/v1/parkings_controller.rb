module Api
  module V1
    class ParkingsController < ApplicationController
      before_action :set_parking, only: %i[out pay]
      
      def parking
        @parking = Parking.new(parkings_params)
        if @parking.save
          render json: ParkingPresenter.entrace_ticket(@parking).merge(
            message: 'Vehicle registered successfully!'
          )
        else
          render json: { message: 'Error terminating output!' }
        end
      end

      def out
        @parking.left = params[:finished]
        if @parking.save
          render json: { message: 'Exit successfully!' }
        else
          render json: { message: 'Error terminating output!' }
        end
      end

      def pay
        @parking.paid = params[:payment]
        if @parking.save
          @parking = UpdateTimeService.new(@parking).call
          render json: ParkingPresenter.payment_voucher(@parking).merge(
            message: 'Payment made successfully!'
          )
        else
          render json: { message: 'Error making payment!' }
        end
      end

      private
 
      def set_parking
        @parking = Parking.find(params[:id])
      end
  
      def parkings_params
        params.require(:parking).permit(:plate, :time, :paid, :left)
      end
    end
  end
end
