module.exports = (app) ->
    httpMethod: "DELETE"
    nickname: "AppCollaboratorDelete"
    summary: "Remove a collaborator from an app"
    parameters: [
      app
      ,
        paramType: "path"
        required: true
        name: "email"
        dataType: "string"
        description: "the email of the user to remove from collaborators"
        allowMultiple: false
    ]



