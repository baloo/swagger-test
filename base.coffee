module.exports = (apis, models, name) ->
  apiVersion: 0.1
  swaggerVersion: 1.1
  basePath: "http://fog.91.209.78.166.xip.io/"
  resourcePath: "/" + name
  apis: apis
  models: models

