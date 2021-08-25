class AddDescriptionToDepartment < ActiveRecord::Migration[6.1]
  def change
    add_column :departments, :description, :text
  end
end
