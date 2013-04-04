module.exports = (app) ->
  httpMethod: "DELETE"
  nickname: "deleteApp"
  summary: "Delete app"
  notes: "Destroy an app"
  parameters: [
    app
  ]

