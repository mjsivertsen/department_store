class DepartmentsController < ApplicationController
 
 before_action :set_department, only:[:show]


def index
  departments = Department.all
  render component: "Departments", props: {departments: departments}
end

def show
  render component: "Department", props: {department: @department}
end
  



private

def set_department
  @department = Department.find(params[:id])
end

end
