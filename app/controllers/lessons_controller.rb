class LessonsController < ApplicationController
  def index
    @lessons = Lesson.all
    @show = params[:show] || "Open"
    @user = current_user

    if params[:user_id] && params[:query]
      @lessons = Lesson.search_by_name_and_description(params[:query]).where(user: @user)
    elsif params[:user_id]
      @lessons = Lesson.where(user: @user)
    elsif params[:query].present?
      @lessons = Lesson.search_by_name_and_description(params[:query]).where.not(user: @user)
    else
      @lessons = Lesson.where.not(user: @user)
    end

    @lessons = @lessons.where(status: @show)
  end

  def show
    @bookings = Booking.all
    @lesson = Lesson.find(params[:id])
  end

  def new
    @lesson = Lesson.new
    @subjects = Subject.all
  end

  def create
    @lesson = Lesson.new(lesson_params)
    @lesson.user = current_user
    @lesson.status = "Open"
    if @lesson.save
      redirect_to lesson_path(@lesson)
    else
      render :new
    end
  end

  def edit
    @lesson = Lesson.find(params[:id])
  end

  def update
    @lesson = Lesson.find(params[:id])
    @lesson.update(lesson_params)
    redirect_to lesson_path(@lesson)
  end

  def destroy
    @lesson = Lesson.find(params[:id])
    @lesson.destroy
    redirect_to lessons_path
  end

  def lesson_params
    params.require(:lesson).permit(:start_time, :start_date, :duration,
    :price, :address, :description, :subject_id, :urgent)
  end
end
