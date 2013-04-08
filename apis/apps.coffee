
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
  apis: [
      path: "/apps"
      description: "List apps"
      operations: [
        require './apps/index'
        require './apps/create'
      ]
    ,
      path: "/apps/{name}"
      description: "Operations about app"
      operations: el AppParameter for el in [
        require './apps/get'
        require './apps/rename'
        require './apps/transfer'
        require './apps/delete'
      ]
    ,
      path: "/apps/{name}/server/maintenance"
      description: "Maintenance on app"
      operations: el AppParameter for el in [
        require './apps/maintenance/get'
        require './apps/maintenance/set'
      ]
    ,
      path: "/apps/{name}/collaborators"
      description: "Manage collaborators on your app"
      operations: el AppParameter for el in [
        require './apps/collaborators/list'
        require './apps/collaborators/add'
      ]
    ,
      path: "/apps/{name}/collaborators/{email}"
      description: "Manage collaborators on your app"
      operations: el AppParameter for el in [
        require './apps/collaborators/remove'
      ]
    ,
      path: "/apps/{name}/config_vars"
      description: "Manage configuration on your app"
      operations: el AppParameter for el in [
        require './apps/config/list'
        require './apps/config/add'
      ]
    ,
      path: "/apps/{name}/config_vars/{key}"
      description: "Manage configuration on your app"
      operations: el AppParameter for el in [
        require './apps/config/remove'
      ]
    ,
      path: "/apps/{name}/domains"
      description: "Manage domains on your app"
      operations: el AppParameter for el in [
        require './apps/domain/list'
        require './apps/domain/add'
      ]
    ,
      path: "/apps/{name}/domains/{key}"
      description: "Manage domains on your app"
      operations: el AppParameter for el in [
        require './apps/domain/remove'
      ]
    ,
      path: "/apps/{name}/logs"
      description: "Get logs on your app"
      operations: el AppParameter for el in [
        require './apps/log'
      ]
    ,
      path: "/apps/{name}/ps"
      description: "Handle processes on your app"
      operations: el AppParameter for el in [
        require './apps/ps/list'
        require './apps/ps/oneoff'
      ]
    ,
      path: "/apps/{name}/ps/restart"
      description: "Handle processes on your app"
      operations: el AppParameter for el in [
        require './apps/ps/restart'
      ]
    ,
      path: "/apps/{name}/ps/stop"
      description: "Handle processes on your app"
      operations: el AppParameter for el in [
        require './apps/ps/stop'
      ]
    ,
      path: "/apps/{name}/ps/scale"
      description: "Handle processes on your app"
      operations: el AppParameter for el in [
        require './apps/ps/scale'
      ]
    ,
      path: "/apps/{name}/releases"
      description: "Handle releases on your app"
      operations: el AppParameter for el in [
        require './apps/release/list'
        require './apps/release/rollback'
      ]
    ,
      path: "/apps/{name}/releases/{release}"
      description: "Handle releases on your app"
      operations: el AppParameter for el in [
        require './apps/release/show'
      ]
    ]
