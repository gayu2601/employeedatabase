class CreateUniversities < ActiveRecord::Migration
  def change
    create_table :universities do |t|
      t.string :uname
      t.string :uloc

      t.timestamps
    end
  end
end
