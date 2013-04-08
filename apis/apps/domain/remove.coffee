module.exports = (app) ->
    httpMethod: "DELETE"
    nickname: "AppDomainDelete"
    summary: "Remove a domain from an app"
    parameters: [
      app
      ,
        paramType: "path"
        required: true
        name: "domain_name"
        dataType: "string"
        description: "the domain to remove"
        allowMultiple: false
    ]



