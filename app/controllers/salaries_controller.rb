class SalariesController < ApplicationController

  def new
    @salary = Salary.new
     @userss = User.all
  end

  def index
    if current_user.has_role? :admin
      @salary = Salary.all
    else
      @salary = current_user.salaries
    end
  end

  def update
    respond_to do |format|
      @salary = Salary.find params[:id]
      if @salary.update(salary_params)
        format.html { redirect_to  salaries_path, notice: 'successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @salary.errors, status: :unprocessable_entity }
      end
    end
  end

  def payslip
    # binding.pry
    @salary = Salary.find(params[:id])
     respond_to do |format|
                   format.html
                   format.pdf do
                     render pdf: "payslip", template: 'salaries/payslip.html', layout: 'pdf'
      end
    end
  end
  def emp
    @salary = Salary.all
  end

  def edit
    @salary = Salary.find(params[:id])
  end

  def create
    # @user = User.find(params[:id])
    @salary = Salary.new(salary_params)
    # binding.pry

    if @salary.save
      redirect_to new_salary_path, notice: 'Successfully recorded raise'
    else
      redirect_to admin_path, notice: 's'
    end
  end

  def destroy
    @salary = Salary.find(params[:id])
    msg = @salary.destroy
    redirect_to salaries_path
  end

  private

  def salary_params
    params.require(:salary).permit(:start_date, :annual_amount, :user_id, :income, :daily_income, :attendance, :salary)
  end
end

