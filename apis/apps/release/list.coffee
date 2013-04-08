module.exports = (app) ->
    httpMethod: "GET"
    nickname: "AppReleaseList"
    summary: "List releases for an app"
    parameters: [
      app
    ]



