class CreateDepartments < ActiveRecord::Migration
  def change
    create_table :departments do |t|
      t.belongs_to :college, index: true
      t.string :dno
      t.string :dname

      t.timestamps
    end
  end
end
