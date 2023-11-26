class UnionMembership < ApplicationRecord
    belongs_to :union
    belongs_to :crew_member

    validates :union, presence: true
    validates :crew_member, presence: true
end
