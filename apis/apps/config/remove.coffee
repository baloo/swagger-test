module.exports = (app) ->
    httpMethod: "DELETE"
    nickname: "AppConfigDelete"
    summary: "Remove a config var from an app"
    parameters: [
      app
      ,
        paramType: "path"
        required: true
        name: "key"
        dataType: "string"
        description: "the config key to remove"
        allowMultiple: false
    ]



