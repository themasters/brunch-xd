angular.module('SrashParams').factory 'camelCaseParamsInterceptor', [ ->
  response: (response) ->
    if typeof response.data isnt 'string'
      response.data = humps.camelizeKeys(response.data)
    response
]
