((factory) ->
  if define?.amd
    define [], () ->
      factory
  else
    factory
) ($) ->
  class <%= appName %>
    constructor: ->
