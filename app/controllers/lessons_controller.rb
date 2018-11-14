class LessonsController < ApplicationController
  def index
    @lessons = Lesson.all
    if params[:user_id]
      if params[:show]
        @user = User.find(params[:user_id])
        @lessons = Lesson.where(user: @user)
        @lessons = @lessons.where(status: params[:show])
      else
        @user = User.find(params[:user_id])
        @lessons = Lesson.where(user: @user)
        @lessons = @lessons
      end
    else
      if params[:show]
        @user = current_user
        @lessons = Lesson.where.not(user: @user)
        @lessons = @lessons.where(status: params[:show])
      else
        @user = current_user
        @lessons = Lesson.where.not(user: @user)
        @lessons = @lessons
      end
    end
  end

  def show
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
    :price, :address, :description, :subject_id)
  end
end
