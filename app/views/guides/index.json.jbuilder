json.array!(@guides) do |guide|
  json.extract! guide, :id, :atention_id, :service_id, :total
  json.url guide_url(guide, format: :json)
end
