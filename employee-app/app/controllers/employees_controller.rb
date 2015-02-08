class EmployeesController < ApplicationController
  def employee
    @employee = Employee.first
  end

  def all_the_people
    @employees = Employee.all
  end
end
