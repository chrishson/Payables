class Employer < ApplicationRecord
    has_many :projects
    
    has_many :employment_contracts, through: :projects
    has_many :crew_members, through: :employment_contracts
end
