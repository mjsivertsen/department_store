class DepartmentsController < ApplicationController
 
 before_action :set_department, only:[:show, :edit, :update, :destroy]


def index
  departments = Department.all
  render component: "Departments", props: {departments: departments}
end

def new
  render component: "NewDepartment"
end

def create
  @department = Department.new(department_params)
  if(@department.save)
    redirect_to departments_path
  else
  end
end

def show
  # department = Department.find(params[:id])
  render component: "Department", props: {department: @department}
end

def edit
  render component: "EditDepartment", props: {department: @department}
end

def update
  if @department.update(department_params)
    redirect_to root_path
  else
  end
end

def destroy
  @department.delete
  redirect_to root_path
end


private

def set_department
  @department = Department.find(params[:id])
end

def department_params
  params.require(:department).permit(:name, :description)
end

end
