module.exports = (app) ->
    httpMethod: "PUT"
    nickname: "renameApp"
    summary: "Rename an app"
    parameters: [
      app,
        paramType: "body"
        required: true
        name: "app[transfer_owner]"
        dataType: "String"
        description: "The new app name"
        allowMultiple: false
    ]



