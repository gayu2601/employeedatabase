class CreateHods < ActiveRecord::Migration
  def change
    create_table :hods do |t|
      t.belongs_to :employee, index: true
      t.belongs_to :department, index: true

      t.timestamps
    end
  end
end
