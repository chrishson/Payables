class CreateEmploymentContracts < ActiveRecord::Migration[7.1]
  def change
    create_table :employment_contracts do |t|
      t.integer :crew_member_id
      t.integer :project_id
      t.date :start_date
      t.date :end_date
      t.string :role
      t.decimal :rate
      t.text :terms

      t.timestamps
    end
    add_foreign_key :employment_contracts, :crew_members, column: :crew_member_id
    add_foreign_key :employment_contracts, :projects, column: :project_id
  end
end
