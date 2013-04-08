module.exports =
    httpMethod: "POST"
    nickname: "AppCreate"
    summary: "Create app"
    parameters:[
        paramType: "body"
        required: false
        name: "app[name]"
        dataType: "String"
        description: "the app name, if ommitted it will be automatically generated"
        allowMultiple: false
      ,
        paramType: "body"
        required: true
        name: "app[stack]"
        dataType: "String"
        allowableValues: 
          valueType: "LIST"
          values: [
            "cedar"
          ]
        description: "The stack"
        allowMultiple: false
    ]
    responseClass: "App"
    errorResponses: [
        code: 422
        reason: "Raised if name is already taken"
      ,
        code: 404
        reason: "Raised if stack does not exists"
    ]

