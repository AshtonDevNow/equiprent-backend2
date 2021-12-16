json.products do
  json.array! @products do |product|
    json.extract! product, :id, :name, :description, :image
  end
end
