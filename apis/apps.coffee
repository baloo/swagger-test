


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
          require './apps/post'
        ]
      }
      {
        path: "/apps/{name}"
        description: "Operations about app"
        operations: [
          require './apps/get'
          require './apps/rename'
          require './apps/transfer'
          require './apps/delete'
        ]
      }
      {
        path: "/apps/{name}/server/maintenance"
        description: "Maintenance on app"
        operations: [
          require './apps/maintenance_get'
          require './apps/maintenance_set'
        ]
      }
    ]
