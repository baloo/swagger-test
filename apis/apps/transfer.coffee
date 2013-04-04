module.exports =
    httpMethod: "PUT"
    nickname: "tranferApp"
    summary: "Transfer an app"
    parameters: [
      paramType: "body"
      name: "app[name]"
      required: true
      dataType: "String"
      description: "The new app name"
      allowMultiple: false
    ]



