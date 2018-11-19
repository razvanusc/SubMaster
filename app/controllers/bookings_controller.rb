class BookingsController < ApplicationController
  def index
    @bookings = policy_scope(Booking).all

    # if params[:show]
    #   @bookings = @bookings.where(status: params[:show])
    # else
    #   @bookings = @bookings
    # end
  end

  def show
    @booking = Booking.find(params[:id])
    authorize @booking
  end

  def new
    @lesson = Lesson.find(params[:lesson_id])
    @booking = Booking.new
    authorize @booking
  end

  def create
    @lesson = Lesson.find(params[:lesson_id])
    @booking = Booking.new
    @booking.user = current_user
    authorize @booking
    @booking.lesson = @lesson
    @booking.status = "Pending"

    if @booking.save
      redirect_to booking_path(@booking)
    else
      render :new
    end
  end

  def confirm
    @booking = Booking.find(params[:id])
    authorize @booking
    redirect_to user_path(current_user)
  end

  def edit
    @booking = Booking.find(params[:id])
    authorize @booking
  end

  def update
    @booking = Booking.find(params[:id])
    authorize @booking
    @booking.update(booking_params)
    redirect_to bookings_path
  end

  private

  def booking_params
    params.require(:booking).permit(:status)
  end
end
