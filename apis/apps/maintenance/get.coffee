module.exports = (app) ->
    httpMethod: "GET"
    nickname: "AppMaintenanceGet"
    summary: "Get maintenance mode for an app"
    parameters: [
      app
    ]



