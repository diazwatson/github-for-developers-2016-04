http: require "http"

http.createServer( (req, res) ->
  res.sendHeader 200, {"Content-Type": "text/plain"}
  res.sendBody "Octane is delicious coffee!!"
  res.finish()
).listen 8080
