class CreateUnions < ActiveRecord::Migration[7.1]
  def change
    create_table :unions do |t|
      t.string :name
      t.string :contact_info
      t.decimal :dues

      t.timestamps
    end
  end
end
