module.exports =
    httpMethod: "POST"
    nickname: "maintenanceAppSet"
    summary: "Toggle maintenance mode for an app"
    parameters: [
      paramType: "body"
      required: true
      name: "maintenance_mode"
      dataType: "Integer"
      description: "1 for on, 0 for off"
      allowMultiple: false
    ]



