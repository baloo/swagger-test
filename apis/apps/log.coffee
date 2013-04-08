module.exports = (app) ->
    httpMethod: "GET"
    nickname: "AppLog"
    summary: "Get logs from an app"
    parameters: [
      app
      ,
        paramType: "body"
        required: true
        name: "logplex"
        allowableValues:
          valueType: "LIST"
          values: [
            "true"
          ]
        dataType: "Boolean"
        description: "The log backend to use (always true)"
        allowMultiple: false
      ,
        paramType: "body"
        required: false
        name: "num"
        dataType: "Integer"
        description: "The number of lines to display"
        allowMultiple: false
      ,
        paramType: "body"
        required: false
        name: "ps"
        dataType: "String"
        description: "only display logs from a given process"
        allowMultiple: false
      ,
        paramType: "body"
        required: false
        name: "source"
        dataType: "String"
        description: "only display logs from a given process"
        allowMultiple: false
      ,
        paramType: "body"
        required: false
        name: "tail"
        dataType: "Boolean"
        description: "1: continually stream logs <blank>: display only num logs"
        allowMultiple: false
    ]



