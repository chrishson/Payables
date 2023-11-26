class CreateUnionMemberships < ActiveRecord::Migration[7.1]
  def change
    create_table :union_memberships do |t|
      t.integer :crew_member_id
      t.integer :union_id
      t.date :membership_date
      t.string :membership_status

      t.timestamps
    end
    add_foreign_key :union_memberships, :crew_members, column: :crew_member_id
    add_foreign_key :union_memberships, :unions, column: :union_id
  end
end
