class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @user = User.find_by(id: params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new
    @user.first_name = params[:first_name]
    @user.last_name = params[:last_name]
    @user.email = params[:email]
    @user.phone = params[:phone]
    @user.street_address = params[:street_address]
    @user.city = params[:city]
    @user.state = params[:state]
    @user.zip = params[:zip]
    @user.due_date = params[:due_date]
    @user.birth_place = params[:birth_place]
    @user.doc_midwife = params[:doc_midwife]
    @user.baby_gender = params[:baby_gender]
    @user.password_digest = params[:password_digest]

    if @user.save
      redirect_to categories_url, notice: "Thank you! Your registration has been completed successfully!"
    else
      render 'new'
    end

    course = Course.find_by(:id => params[:course_id])
    course.slots.each do |slot|
      if slot.available?
      slot.user_id = @user.id
      slot.available = false
      slot.save
      break
      end
    end

  end

  def edit
    @user = User.find_by(id: params[:id])
  end

  def update
    @user = User.find_by(id: params[:id])
    @user.first_name = params[:first_name]
    @user.last_name = params[:last_name]
    @user.email = params[:email]
    @user.phone = params[:phone]
    @user.street_address = params[:street_address]
    @user.city = params[:city]
    @user.state = params[:state]
    @user.zip = params[:zip]
    @user.due_date = params[:due_date]
    @user.birth_place = params[:birth_place]
    @user.doc_midwife = params[:doc_midwife]
    @user.baby_gender = params[:baby_gender]
    @user.password_digest = params[:password_digest]

    @user.slots.each do |slot|
      slot.available = true
      slot.user_id = nil
      slot.save
      end

      c = Course.find(params[:course_id])
      c.slots.each do |slot|
        if slot.available?
          slot.user_id = @user.id
          slot.available = false
          slot.save
          break
        end
      end

    if @user.save
      redirect_to users_url, notice: "User updated successfully."
    else
      render 'edit'
    end

   end

  def destroy
    @user = User.find_by(id: params[:id])
    @user.destroy

    redirect_to users_url, notice: "User deleted."
  end
end
