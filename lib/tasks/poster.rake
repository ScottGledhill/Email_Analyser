task :post_data do
  data = [
    {"Address":"barney@lostmy.name","EmailType":"Shipment","Event":"send","Timestamp":1466183884},
    {"Address":"vitor@lostmy.name","EmailType":"UserConfirmation","Event":"send","Timestamp":1466183885},
    {"Address":"tal@lostmy.name","EmailType":"Order","Event":"send","Timestamp":1466183886},
    {"Address":"tom@lostmy.name","EmailType":"GetABookDiscount","Event":"send","Timestamp":1466183887},
    {"Address":"barney@lostmy.name","EmailType":"Shipment","Event":"send","Timestamp":1466183892},
    {"Address":"vitor@lostmy.name","EmailType":"UserConfirmation","Event":"send","Timestamp":1466183893},
    {"Address":"tal@lostmy.name","EmailType":"Order","Event":"send","Timestamp":1466183894},
    {"Address":"tom@lostmy.name","EmailType":"GetABookDiscount","Event":"send","Timestamp":1466183895},
    {"Address":"patrick@lostmy.name","EmailType":"GetABookDiscount","Event":"send","Timestamp":1466183896},
    {"Address":"barney@lostmy.name","EmailType":"UserConfirmation","Event":"send","Timestamp":1466183897},
    {"Address":"tom@lostmy.name","EmailType":"UserConfirmation","Event":"click","Timestamp":1466183898},
    {"Address":"tony@lostmy.name","EmailType":"ReferAFriend","Event":"send","Timestamp":1466183899},
    {"Address":"vitor@lostmy.name","EmailType":"Shipment","Event":"open","Timestamp":1466183900},
    {"Address":"jacob@lostmy.name","EmailType":"Order","Event":"send","Timestamp":1466183901},
    {"Address":"vitor@lostmy.name","EmailType":"ReferAFriend","Event":"open","Timestamp":1466183902},
    {"Address":"rehat@lostmy.name","EmailType":"GetABookDiscount","Event":"send","Timestamp":1466183903},
    {"Address":"jacob@lostmy.name","EmailType":"UserConfirmation","Event":"open","Timestamp":1466183904},
    {"Address":"f@lostmy.name","EmailType":"ReferAFriend","Event":"click","Timestamp":1466183906},
    {"Address":"barney@lostmy.name","EmailType":"ReferAFriend","Event":"send","Timestamp":1466183907},
    {"Address":"tom@lostmy.name","EmailType":"ReferAFriend","Event":"send","Timestamp":1466183908},
    {"Address":"rehat@lostmy.name","EmailType":"ReferAFriend","Event":"send","Timestamp":1466183909},
    {"Address":"rehat@lostmy.name","EmailType":"GetABookDiscount","Event":"click","Timestamp":1466183910},
    {"Address":"barney@lostmy.name","EmailType":"Order","Event":"open","Timestamp":1466183911},
    {"Address":"barney@lostmy.name","EmailType":"ReferAFriend","Event":"send","Timestamp":1466183912},
    {"Address":"vitor@lostmy.name","EmailType":"Order","Event":"send","Timestamp":1466183913},
    {"Address":"barney@lostmy.name","EmailType":"UserConfirmation","Event":"send","Timestamp":1466183914},
    {"Address":"callum@lostmy.name","EmailType":"Shipment","Event":"open","Timestamp":1466183915},
    {"Address":"josh@lostmy.name","EmailType":"ReferAFriend","Event":"open","Timestamp":1466183916},
    {"Address":"barney@lostmy.name","EmailType":"ReferAFriend","Event":"send","Timestamp":1466183917},
    {"Address":"vitor@lostmy.name","EmailType":"Shipment","Event":"open","Timestamp":1466183918},
    {"Address":"jacob@lostmy.name","EmailType":"Order","Event":"send","Timestamp":1466183919},
    {"Address":"tom@lostmy.name","EmailType":"Shipment","Event":"send","Timestamp":1466183920},
    {"Address":"simon@lostmy.name","EmailType":"GetABookDiscount","Event":"send","Timestamp":1466183921},
    {"Address":"f@lostmy.name","EmailType":"UserConfirmation","Event":"send","Timestamp":1466183922},
    {"Address":"tony@lostmy.name","EmailType":"UserConfirmation","Event":"send","Timestamp":1466183923},
    {"Address":"tal@lostmy.name","EmailType":"Order","Event":"send","Timestamp":1466183924},
    {"Address":"simon@lostmy.name","EmailType":"ReferAFriend","Event":"send","Timestamp":1466183925},
    {"Address":"f@lostmy.name","EmailType":"Order","Event":"send","Timestamp":1466183926},
    {"Address":"patrick@lostmy.name","EmailType":"Shipment","Event":"open","Timestamp":1466183927},
    {"Address":"barney@lostmy.name","EmailType":"Order","Event":"open","Timestamp":1466183928},
    {"Address":"tony@lostmy.name","EmailType":"Shipment","Event":"click","Timestamp":1466183929},
    {"Address":"pete@lostmy.name","EmailType":"UserConfirmation","Event":"open","Timestamp":1466183930},
    {"Address":"jacob@lostmy.name","EmailType":"Shipment","Event":"open","Timestamp":1466183931},
    {"Address":"oz@lostmy.name","EmailType":"UserConfirmation","Event":"click","Timestamp":1466183932}
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
