module.exports = (app) ->
    httpMethod: "POST"
    nickname: "AppMaintenanceSet"
    summary: "Toggle maintenance mode for an app"
    parameters: [
      app,
        paramType: "body"
        required: true
        name: "maintenance_mode"
        dataType: "Integer"
        description: "1 for on, 0 for off"
        allowMultiple: false
    ]



