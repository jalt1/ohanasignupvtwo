class SlotsController < ApplicationController

  def index
    @slots = Slot.all
  end

  def show
    @slot = Slot.find_by(id: params[:id])
  end

  def new
  end

  def create
    @slot = Slot.new
    @slot.user_id = params[:user_id]
    @slot.course_id = params[:course_id]
    @slot.paid = params[:paid]
    @slot.available = params[:available]

    if @slot.save
      redirect_to slots_url, notice: "Slot created successfully."
    else
      render 'new'
    end
  end

  def edit
    @slot = Slot.find_by(id: params[:id])
  end

  def update
    @slot = Slot.find_by(id: params[:id])
    @slot.user_id = params[:user_id]
    @slot.course_id = params[:course_id]
    @slot.paid = params[:paid]
    @slot.available = params[:available]

    if @slot.save
      redirect_to slots_url, notice: "Slot updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @slot = Slot.find_by(id: params[:id])
    @slot.destroy

    redirect_to slots_url, notice: "Slot deleted."
  end
end
