
AppParameter =
  name: "name"
  description: "Application name"
  paramType: "path"
  required: true
  allowMultiple: false
  dataType: "string"


module.exports =
  models:
   require './app_model'
  apis:
    [
      {
        path: "/apps"
        description: "List apps"
        operations: [
          require './apps/index'
          require './apps/create'
        ]
      }
      {
        path: "/apps/{name}"
        description: "Operations about app"
        operations: el AppParameter for el in [
          require './apps/get'
          require './apps/rename'
          require './apps/transfer'
          require './apps/delete'
        ]
      }
      {
        path: "/apps/{name}/server/maintenance"
        description: "Maintenance on app"
        operations: el AppParameter for el in [
          require './apps/maintenance/get'
          require './apps/maintenance/set'
        ]
      }
    ]
