class ChangeUniversityName < ActiveRecord::Migration
  def change
      rename_column :universities , :uname, :name
  end
end
