class Debtor < ApplicationRecord
  belongs_to :user

  has_many :payments
  has_many :debts
end
