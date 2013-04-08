module.exports = (app) ->
    httpMethod: "GET"
    nickname: "AppDomainList"
    summary: "List domains for an app"
    parameters: [
      app
    ]



