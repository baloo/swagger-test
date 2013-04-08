module.exports = (app) ->
    httpMethod: "POST"
    nickname: "AppConfigAdd"
    summary: "Add config vars to an app"
    parameters: [
      app
      ,
        paramType: "body"
        required: true
        name: "body"
        dataType: "string"
        description: "the new config vars as a JSON hash"
        allowMultiple: false
    ]



