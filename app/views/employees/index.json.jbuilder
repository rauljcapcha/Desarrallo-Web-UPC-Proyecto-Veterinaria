json.array!(@employees) do |employee|
  json.extract! employee, :id, :document_type_id, :documentnumber, :name, :lastname, :motherslastname
  json.url employee_url(employee, format: :json)
end
