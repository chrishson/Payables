class EmploymentContract < ApplicationRecord
    belongs_to :project
    belongs_to :crew_member

    validates :project, presence: true
    validates :crew_member, presence: true
end
