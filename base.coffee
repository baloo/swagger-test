module.exports = (apis, models, name, url) ->
  apiVersion: 0.1
  swaggerVersion: 1.1
  basePath: url
  resourcePath: "/" + name
  apis: apis
  models: models

