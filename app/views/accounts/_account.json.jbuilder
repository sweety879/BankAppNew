json.extract! account, :id, :account_type, :balance, :bank_branch_id, :customer_id, :created_at, :updated_at
json.url account_url(account, format: :json)
