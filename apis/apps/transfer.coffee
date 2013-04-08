module.exports = (app) ->
    httpMethod: "PUT"
    nickname: "AppTransfer"
    summary: "Transfer an app"
    parameters: [
      app,
        paramType: "body"
        name: "app[name]"
        required: true
        dataType: "String"
        description: "The new app name"
        allowMultiple: false
    ]



