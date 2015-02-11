class EmployeesController < ApplicationController
  def employee
    @employee = Employee.first
  end

  def all_the_people
    @employees = Employee.all
  end

  def add_employee
  end

  def submit_employee
    Employee.create({:first_name => params[:first_name], :last_name => params[:last_name], :title => params[:title]})
  end



  def index
    
  end
end
