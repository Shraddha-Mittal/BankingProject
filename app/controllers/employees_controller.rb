class EmployeesController < ApplicationController
  before_action :set_employee, except: [:index, :new, :create]


  def index
    @employee = Employee.all

  end

  def show
  end

  def new
    @employee = Employee.new
    @employee.addresses.build
    @employee.account_details.build
    @employee.build_employee_detail
  end

  def edit
  end

  def create
    @employee = Employee.new(employee_param)
    if  @employee.save
      redirect_to @employee
    else
      render 'new'
    end
  end

  def update
    if @employee.update(employee_param)
      redirect_to @employee
    else
      render "edit"
    end
  end

  def destroy
    @employee.destroy
    redirect_to employees_path
  end

  private

  def employee_param
    params.require(:employee).permit(:id, :name, :age, :sex, :phone_no,
            addresses_attributes: [ :id, :street, :city, :state, :pincode, :country],
          employee_detail_attributes: [ :id, :designation, :hobbies, :experience_of_years,
              :marital_status, :joining_date, :email_id], account_details_attributes: [ :id,
                :account_id, :status, :bank_name, :account_type])
  end

 private

   def set_employee
   @employee = Employee.find(params[:id])
   end
 end
