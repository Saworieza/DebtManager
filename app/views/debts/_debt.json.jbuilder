json.extract! debt, :id, :amount, :date, :reason, :user_id, :debtor_id, :created_at, :updated_at
json.url debt_url(debt, format: :json)
