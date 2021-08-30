class CommentsController < ApplicationController
  before_action :set_department
  before_action :set_item
  before_action :set_comment, only: [:show, :edit, :update, :destroy]

def index
  render component: "Item", props: {item: @item, comments: @item.comments}
end

def new
  render component: "Item", props: {department: @department, item: @item }
end

def create
  @item.comments.create(comment_params)
    redirect_to department_item_path( @item.department_id, @item.id)
end

def show
end

def edit
end

def update
end

def destroy
end

private

def set_department
  @department = Department.find(params[:department_id])
end

def set_item
  @item = @department.items.find(params[:item_id])
end

def set_comment
  @comment = @item.comments.find(params[:id])
end

def comment_params
  params.require(:comment).permit(:purchased_by, :body)
end

def item_params
  params.require(:item).permit(:name, :price, :description)
end

def department_params
  params.require(:department).permit(:name, :description)
end



end
