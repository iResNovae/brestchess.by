class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name
      t.integer :rating
      t.text :description

      t.timestamps
    end
  end
end
