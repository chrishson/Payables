class CreateEmployers < ActiveRecord::Migration[7.1]
  def change
    create_table :employers do |t|
      t.string :name
      t.string :industry_type

      t.timestamps
    end
  end
end
