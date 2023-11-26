class CrewMember < ApplicationRecord
    has_many :employment_contracts
    has_many :union_memberships

    has_many :unions, through: :union_memberships
    has_many :projects, through: :employment_contracts
    has_many :employers, through: :projects
    has_many :payments, through: :employment_contracts

    validates :first_name, presence: true
end
