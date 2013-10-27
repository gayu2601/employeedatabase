class ChangeDeptName < ActiveRecord::Migration
  def change
      rename_column :departments, :dname, :name
  end
end
