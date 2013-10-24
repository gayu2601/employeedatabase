class CreateColleges < ActiveRecord::Migration
  def change
    create_table :colleges do |t|
      t.string :c_code
      t.string :cname
      t.belongs_to :university, index: true

      t.timestamps
    end
  end
end
