class CoursesController < ApplicationController

  def index
    @courses = Course.all
  end

  def show
    @course = Course.find_by(id: params[:id])
  end

  def new
  end

  def create
    @course = Course.new
    @course.start_date = params[:start_date]
    @course.end_date = params[:end_date]
    @course.category_id = params[:category_id]
    @course.cost = params[:cost]
    @course.place = params[:place]
    @course.start_time = params[:start_time]
    @course.end_time = params[:end_time]
    @course.teacher = params[:teacher]

    if @course.save
      redirect_to courses_url, notice: "Course created successfully."
    else
      render 'new'
    end

    8.times do
      @slot = Slot.new
      @slot.course_id = @course.id
      @slot.available = true
      @slot.save
    end
  end

  def edit
    @course = Course.find_by(id: params[:id])
  end

  def update
    @course = Course.find_by(id: params[:id])
    @course.start_date = params[:start_date]
    @course.end_date = params[:end_date]
    @course.category_id = params[:category_id]
    @course.cost = params[:cost]
    @course.place = params[:place]
    @course.start_time = params[:start_time]
    @course.end_time = params[:end_time]
    @course.teacher = params[:teacher]

    if @course.save
      redirect_to courses_url, notice: "Course updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @course = Course.find_by(id: params[:id])
    @course.destroy

    redirect_to courses_url, notice: "Course deleted."
  end
end
