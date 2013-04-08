module.exports = (app) ->
    httpMethod: "POST"
    nickname: "AppDomainAdd"
    summary: "Add domains to an app"
    parameters: [
      app
      ,
        paramType: "body"
        required: true
        name: "domain_name[domain]"
        dataType: "string"
        description: "the domain to add"
        allowMultiple: false
    ]



