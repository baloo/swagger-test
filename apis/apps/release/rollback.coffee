module.exports = (app) ->
    httpMethod: "GET"
    nickname: "AppReleaseRollback"
    summary: "Rollback to a release"
    parameters: [
      app
      ,
        paramType: "body"
        required: true
        name: "release"
        dataType: "string"
        description: "the release name"
        allowMultiple: false
  
    ]



