((factory) ->
  if define?.amd
    define [], () ->
      window.<%= className %> ||= new(factory)
  else
    window.<%= className %> ||= new(factory)
) ($) ->
  class <%= className %>
    constructor: ->
      console.log @
