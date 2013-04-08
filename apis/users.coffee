
#AppParameter =
#  name: "name"
#  description: "Application name"
#  paramType: "path"
#  required: true
#  allowMultiple: false
#  dataType: "string"


module.exports =
  #models:
  # require './app_model'
  apis: [
      path: "/user/keys"
      description: "Handle your ssh keys"
      operations: [
        require './user/key/list'
        require './user/key/create'
        require './user/key/flush'
      ]
    ,
      path: "/user/keys/{key}"
      description: "Handle your ssh keys"
      operations: [
        require './user/key/delete'
      ]
    ]
