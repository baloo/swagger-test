module.exports = (app) ->
    httpMethod: "GET"
    nickname: "AppConfigList"
    summary: "List config vars for an app"
    parameters: [
      app
    ]



