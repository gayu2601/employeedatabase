class CreateNonteachings < ActiveRecord::Migration
  def change
    create_table :nonteachings do |t|
      t.belongs_to :employee, index: true
      t.string :post

      t.timestamps
    end
  end
end
