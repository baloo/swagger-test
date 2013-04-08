module.exports = (app) ->
    httpMethod: "POST"
    nickname: "AppProcessOneoff"
    summary: "Run a one-off process"
    parameters: [
      app
      ,
        paramType: "body"
        required: false
        name: "attached"
        dataType: "Boolean"
        description: "true: use rendezvous to access stdin/stdout <blank>: stream process output to the application log"
        allowMultiple: false
      ,
        paramType: "body"
        required: true
        name: "command"
        dataType: "String"
        description: "the command to run"
        allowMultiple: false
    ]



