class EmployeesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  # GET /employees
  # GET /employees.json
  def index
    @users = User.all
  end

  def show
    set_user
  end

  def new
    @user = User.new
  end

#   # GET /employees/1/edit
#   def edit
#   end

#   # POST /employees
#   # POST /employees.json
#   def create
#     @employee = Employee.new(employee_params)

#     respond_to do |format|
#       if @employee.save
#         format.html { redirect_to @employee, notice: 'Employee was successfully created.' }
#         format.json { render :show, status: :created, location: @employee }
#       else
#         format.html { render :new }
#         format.json { render json: @employee.errors, status: :unprocessable_entity }
#       end
#     end
#   end

#   # PATCH/PUT /employees/1
#   # PATCH/PUT /employees/1.json
#   def update
#     respond_to do |format|
#       if @employee.update(employee_params)
#         format.html { redirect_to @employee, notice: 'Employee was successfully updated.' }
#         format.json { render :show, status: :ok, location: @employee }
#       else
#         format.html { render :edit }
#         format.json { render json: @employee.errors, status: :unprocessable_entity }
#       end
#     end
#   end

#   # DELETE /employees/1
#   # DELETE /employees/1.json
#   def destroy
#     @employee.destroy
#     respond_to do |format|
#       format.html { redirect_to employees_url, notice: 'Employee was successfully destroyed.' }
#       format.json { head :no_content }
#     end
#   end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def employee_params
      params.fetch(:employee, {})
    end
end
