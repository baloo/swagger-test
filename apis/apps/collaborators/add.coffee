module.exports = (app) ->
    httpMethod: "POST"
    nickname: "AppCollaboratorAdd"
    summary: "Add a collaborator to an app"
    parameters: [
      app
      ,
        paramType: "body"
        required: true
        name: "collaborator[email]"
        dataType: "string"
        description: "the email of the user to add as a collaborator"
        allowMultiple: false
    ]



