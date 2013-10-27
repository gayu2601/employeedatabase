class ChangeCollegeName < ActiveRecord::Migration
  def change
      rename_column :colleges, :cname , :name
  end
end
