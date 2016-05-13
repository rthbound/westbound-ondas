json.array!(@ondas) do |onda|
  json.extract! onda, :id, :card_title, :card_description, :card_image_url, :page_title, :page_header, :page_image, :page_image_width, :page_image_height, :page_image_link_target
  json.url onda_url(onda, format: :json)
end
