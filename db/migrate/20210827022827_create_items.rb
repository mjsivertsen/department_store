class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.belongs_to :department, null: false, foreign_key: true
      t.string :name
      t.float :price
      t.string :description

      t.timestamps
    end
  end
end
