class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @lesson = Lesson.find(params[:lesson_id])
    @booking = Booking.new
  end

  def create
    @lesson = Lesson.find(params[:lesson_id])
    @booking = Booking.new
    @booking.user = current_user
    @booking.lesson = @lesson
    @booking.status = "Pending"
    if @booking.save
      @lesson.update! status: "Pending"
      redirect_to booking_path(@booking)
    else
      render :new
    end
  end

  def confirm
    @booking = Booking.find(params[:id])
    authorize @booking
    @booking.update! status: "Confirmed"
    @lesson.update! status: "Confirmed"
    redirect_to user_path(current_user)
  end

  def edit
    @booking = Booking.find(params[:id])
  end

  def update
    @booking = Booking.find(params[:id])
    @lesson = Lesson.find(params[:id])
    @booking.update(booking_params)
    @lesson.status = @booking.status
    redirect_to bookings_path
  end

  private

  def booking_params
    params.require(:booking).permit(:status)
  end
end
