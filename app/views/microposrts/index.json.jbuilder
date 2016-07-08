json.array!(@microposrts) do |microposrt|
  json.extract! microposrt, :id, :content, :user_id
  json.url microposrt_url(microposrt, format: :json)
end
