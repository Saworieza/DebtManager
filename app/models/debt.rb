class Debt < ApplicationRecord
  belongs_to :user
  belongs_to :debtor

  has_many :payments
end
