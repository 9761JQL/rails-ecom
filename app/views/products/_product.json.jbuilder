json.extract! product, :id, :name, :description, :image, :price, :created_at, :updated_at
json.url product_url(product, format: :json)
json.description product.description.to_s
json.image do
  json.array!(product.image) do |image|
    json.id image.id
    json.url url_for(image)
  end
end
