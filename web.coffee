
express = require "express"


express.logger.format "method", (req, res) ->
  req.method.toLowerCase()

express.logger.format "url", (req, res) ->
  req.url.replace('"', '&quot')

express.logger.format "user-agent", (req, res) ->
  (req.headers["user-agent"] || "").replace('"', '')

app = express.createServer(
  express.logger
    buffer: false
    format: "subject=\"http\" method=\":method\" url=\":url\" status=\":status\" elapsed=\":response-time\" from=\":remote-addr\" agent=\":user-agent\""
  express.bodyParser())

app.configure ->
  app.use '/css', express.static __dirname + "/ui/dist/css"
  app.use '/lib', express.static __dirname + "/ui/dist/lib"
  app.use '/js', express.static __dirname + "/ui/dist/"
  app.use '/images', express.static __dirname + "/ui/dist/images"

app.get "/", (req, res) ->
  res.sendfile "index.html",
    root: "static"

app.get "/api", (req, res) ->
  res.send require "./main"

fog_url = process.env.FOG_URL || "http://localhost:9000"

app.get "/apis/:name", (req, res) ->
  content = require "./apis/" + req.params.name
  base = (require "./base")(content.apis, content.models, req.params.name, fog_url)
  res.send base

port = process.env.PORT || 5000

app.listen port, ->
  console.log "listening on port #{port}"


