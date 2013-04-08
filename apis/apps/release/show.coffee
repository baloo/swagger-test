module.exports = (app) ->
    httpMethod: "GET"
    nickname: "AppReleaseShow"
    summary: "Get info for a release"
    parameters: [
      app
      ,
        paramType: "path"
        required: true
        name: "release"
        dataType: "string"
        description: "the release name"
        allowMultiple: false
  
    ]



