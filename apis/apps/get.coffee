module.exports = (app) ->
  httpMethod: "GET"
  nickname: "AppGet"
  summary: "Get info for an app"
  responseClass: "App"
  parameters: [
    app
  ]

