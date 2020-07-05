class Payment < ApplicationRecord
  belongs_to :debt
  belongs_to :debtor
  belongs_to :user
end
