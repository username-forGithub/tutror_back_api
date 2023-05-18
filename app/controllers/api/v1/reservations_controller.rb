class Api::V1::ReservationsController < ApplicationController
  before_action :authenticate_user!
  def index
    res = current_user.reservations
    options = {
      include: [:tutor]
    }
    render json: ReservationSerializer.new(res, options)
  end

  def create
    reservation = Reservation.new(reservation_params)
    reservation.user = current_user
    options = {
      include: [:tutor]
    }
    if reservation.save
      render json: ReservationSerializer.new(reservation, options)
    else
      render json: { error: 'Something went wrong' }, status: :bad_request
    end
  end

  def destroy
    reservation = Reservation.find(params[:id])

    if reservation.destroy
      render json: {data: 'success'}, status: 200
    else
      render json: { error: 'ERROR: Unable to cancel the reservation' }, status: :unprocessable_entity
    end
  end

  private

  def reservation_params
    params.require(:reservation).permit(:reservation_date, :returning_date, :tutor_id, :city)
  end
end
