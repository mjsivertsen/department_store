class ItemsController < ApplicationController

def index
end

def new
end

def create
end

def edit
end

def update
end

def destroy
end

private

def item_params
  params.require(:item).permit(:name, :price, :description)
end

def set_department
  @department = Department.find(params[:department_id])
end

def set_item
  @item = @department.items.find(params[:id])
end

def department_params
  params.require(:department).permit(:name, :description)
end





end
