json.basket do
  json.id @basket.id
  json.reference @basket.reference
  json.user_uuid @basket.user_uuid
  json.created_at @basket.created_at
  json.updated_at @basket.updated_at

  json.products @products.each do |product|
    json.quantity product[:quantity]
    json.product product[:product]
  end
end unless @basket.nil?
