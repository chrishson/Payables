class CreateProjects < ActiveRecord::Migration[7.1]
  def change
    create_table :projects do |t|
      t.string :title
      t.decimal :budget
      t.date :start_date
      t.date :end_date
      t.integer :employer_id

      t.timestamps
    end
    add_foreign_key :projects, :employers, column: :employer_id
  end
end
