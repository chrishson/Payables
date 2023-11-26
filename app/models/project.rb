class Project < ApplicationRecord
    belongs_to :employer
    has_many :employment_contracts
    has_many :crew_members, through: :employment_contracts
end
