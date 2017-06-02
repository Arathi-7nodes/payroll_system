class UsersController < ApplicationController
  def new
    @user=User.new
    @users=User.all
  end

  def index
    @user=User.with_role :employee
    if params[:search]
      @user = User.search(params[:search]).order("created_at DESC")
    else
      @user = User.all.order("created_at DESC")
    end
  end

  def update
    respond_to do |format|
      @user = User.find params[:id]
      if @user.update(user_params)
        format.html { redirect_to  users_admin_path, notice: 'successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end
  def show
    @user = User.find(params[:id])
  end
  def empl
    @users=User.with_role :employee
  end

  def edit
    @user = User.find(params[:id])
  end

 def create

     @user = User.new(user_params)
    respond_to do |format|
     # binding.pry
         @user.add_role :employee
      if @user.save
        format.html { redirect_to :back, notice: 'Signup successfully!!!!!!!' }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end
  def user_params
    params.require(:user).permit(:name, :email, :password, :address, :phone_no, :designation, :start_date, :end_date, :starting_salary, :direct_experience, :indirect_experience, :billable, :notes, :planning_raise_date, :planning_raise_salary, :planning_notes)
  end

  def destroy
    @user = User.find params[:id]
    @user.destroy
    redirect_to users_admin_path
  end
end

