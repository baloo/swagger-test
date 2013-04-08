module.exports = (app) ->
  httpMethod: "DELETE"
  nickname: "AppDelete"
  summary: "Delete app"
  notes: "Destroy an app"
  parameters: [
    app
  ]

