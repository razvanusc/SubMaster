class LessonsController < ApplicationController
  def index
    # if params[:show]
    #   @lessons = Lesson.where(status: params[:show])
    # else
    #   @lessons = Lesson.all
    #     if user_id = params[:user_id]
    #   @user = User.find(user_id)
    #   @lessons = policy_scope(Lesson).where(user: @user)
    # else
    #   @lessons = policy_scope(Lesson)
    # end
    @lessons = Lesson.all
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
