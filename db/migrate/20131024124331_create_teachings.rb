class CreateTeachings < ActiveRecord::Migration
  def change
    create_table :teachings do |t|
      t.belongs_to :employee, index: true
      t.string :designation

      t.timestamps
    end
  end
end
