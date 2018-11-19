class LessonsController < ApplicationController
  def index
    @lessons = policy_scope(Lesson).all.future_lessons
    @show = params[:show] || "Open"
    @user = current_user

    if params[:user_id] && params[:query]
      @lessons = @lessons.search_by_name_and_description(params[:query]).where(user: @user)
    elsif params[:user_id]
      @lessons = @lessons.where(user: @user)
    elsif params[:query].present?
      @lessons = @lessons.search_by_name_and_description(params[:query]).where.not(user: @user)
    else
      @lessons = @lessons.where.not(user: @user)
    end

    @lessons = @lessons.where(status: @show)
  end

  def show
    @bookings = Booking.all
    @lesson = Lesson.find(params[:id])
    authorize @lesson
    @lessons = Lesson.where.not(latitude: nil, longitude: nil)

    @markers = @lessons.map do |lesson|
      {
        lng: lesson.longitude,
        lat: lesson.latitude
      }
    end
  end

  def new
    @lesson = Lesson.new
    authorize @lesson
    @subjects = Subject.all
  end

  def create
    @lesson = Lesson.new(lesson_params)
    @lesson.user = current_user
    authorize @lesson
    @lesson.status = "Open"
    if @lesson.save
      redirect_to lesson_path(@lesson)
    else
      render :new
    end
  end

  def edit
    @lesson = Lesson.find(params[:id])
    authorize @lesson
  end

  def update
    @lesson = Lesson.find(params[:id])
    authorize @lesson
    @lesson.update(lesson_params)
    redirect_to lesson_path(@lesson)
  end

  def destroy
    @lesson = Lesson.find(params[:id])
    authorize @lesson
    @lesson.destroy
    redirect_to lessons_path
  end

  def lesson_params
    params.require(:lesson).permit(:start_time, :start_date, :duration,
    :price, :address, :description, :subject_id, :urgent)
  end
end
