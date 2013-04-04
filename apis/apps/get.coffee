module.exports = (app) ->
  httpMethod: "GET"
  nickname: "getApp"
  summary: "Get info for an app"
  responseClass: "App"
  parameters: [
    app
  ]

