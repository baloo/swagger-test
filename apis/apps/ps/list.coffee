module.exports = (app) ->
    httpMethod: "GET"
    nickname: "AppProcessList"
    summary: "List processes for an app"
    parameters: [
      app
    ]



