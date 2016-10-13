json.extract! coupon, :id, :name, :datestart, :datefinish, :quantity, :state, :created_at, :updated_at
json.url coupon_url(coupon, format: :json)