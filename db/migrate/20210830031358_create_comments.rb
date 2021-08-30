class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|
      t.string :purchased_by
      t.text :body
      t.belongs_to :item, null: false, foreign_key: true

      t.timestamps
    end
  end
end
