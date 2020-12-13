json.extract! item, :id, :title, :desc, :price, :image1, :image2, :image3, :image4, :size, :condition, :location, :shipment, :tag, :created_at, :updated_at
json.url item_url(item, format: :json)
