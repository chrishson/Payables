class Union < ApplicationRecord
    has_many :union_memberships
    has_many :crew_members, through: :union_memberships

    validates :name, presence: true
end
