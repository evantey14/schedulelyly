class ReservationsController < ApplicationController
  def index
    @reservations = Reservation.all
  end
  def new
  end
  def create
    @new_reservation = Reservation.new(reservation_params)
    if @new_reservation.save
      redirect_to :action => 'index'
    else 
      redirect_to :action => 'new'
    end 
  end
  private
    def reservation_params
      params.require(:reservation).permit(:exam_id, :client_first_name, :client_last_name, :datetime)
    end
end
