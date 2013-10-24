class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :name
      t.date :bdate
      t.text :addr
      t.integer :salary
      t.belongs_to :department, index: true
      t.string :eno
      t.string :gender

      t.timestamps
    end
  end
end
