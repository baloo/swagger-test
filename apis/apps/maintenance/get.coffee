module.exports = (app) ->
    httpMethod: "GET"
    nickname: "maintenanceAppGet"
    summary: "Get maintenance mode for an app"
    parameters: [
      app
    ]



