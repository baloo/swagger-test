module.exports = (app) ->
    httpMethod: "POST"
    nickname: "AppProcessScale"
    summary: "Scale processes of an app"
    parameters: [
      app
      ,
        paramType: "body"
        required: true
        name: "type"
        dataType: "String"
        description: "the type of process to scale"
        allowMultiple: false
      ,
        paramType: "body"
        required: true
        name: "qty"
        dataType: "String"
        description: "the desired number of processes of this type"
        allowMultiple: false
    ]



