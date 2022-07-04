json.extract! customer, :id, :name, :mobile, :pancard, :aadhaar, :address, :email, :created_at, :updated_at
json.url customer_url(customer, format: :json)
