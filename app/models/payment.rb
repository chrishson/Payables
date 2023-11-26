class Payment < ApplicationRecord
    belongs_to :employment_contract
    belongs_to :crew_member through: :employment_contract

    validates :employment_contract, presence: true
    validates :crew_member, presence: true
    validates :amount, presence: true
    validates :date, presence: true
end
