module.exports = (app) ->
    httpMethod: "POST"
    nickname: "AppProcessStop"
    summary: "Stop processes of an app"
    parameters: [
      app
      ,
        paramType: "body"
        required: false
        name: "ps"
        dataType: "String"
        description: "the ps of process to scale"
        allowMultiple: false
      ,
        paramType: "body"
        required: false
        name: "type"
        dataType: "String"
        description: "the type of process to scale"
        allowMultiple: false
    ]



