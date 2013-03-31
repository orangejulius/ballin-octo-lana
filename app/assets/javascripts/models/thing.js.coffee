class window.BOL.Thing extends Backbone.Model
  urlRoot: '/things'
  twiceString: ->
    return @string + @string
