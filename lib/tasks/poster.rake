task :post_data do
  data = [
    {"Address":"barney@lostmy.name","EmailType":"Shipment","Event":"send","Timestamp":1466183884},
    {"Address":"vitor@lostmy.name","EmailType":"UserConfirmation","Event":"send","Timestamp":1466183885},
    {"Address":"tal@lostmy.name","EmailType":"Order","Event":"send","Timestamp":1466183886},
    {"Address":"tom@lostmy.name","EmailType":"GetABookDiscount","Event":"send","Timestamp":1466183887},
  ]
  data.each do |email|
    send_request email
  end
end

def send_request(request_body)
  uri = URI.parse("http://localhost:3000/api/v1/mandril")
  request = Net::HTTP::Post.new(
   uri.request_uri, initheader = {
     'Content-Type' => 'application/json',
     'Accept' => 'application/json'
   }
  )
  p request.body = request_body.to_json
  p http = Net::HTTP.new(uri.host, uri.port)
  p http.use_ssl = true if uri.scheme == 'https'
  p resp = http.request(request)
end
