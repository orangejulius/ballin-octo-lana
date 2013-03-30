class window.BOL.ThingsRouter extends Backbone.Router
  routes =
    "things/:id": "edit",
    "": "index",
    "new": "newThing"

  edit: (id) ->
    thing = new window.BOL.Thing
    thing.fetch(
      error: ->
         new Error( message: 'Could not find that thing.' )
         window.location.hash = '#'
    )

  index:
    $.getJSON('/things', (data)->
      if(data)
        things = _(data).map( (i)->
          return new window.BOL.Thing(i))
        new window.BOL.ThingIndexView({things: things})
      else
        new Error({ message: "Error loading things." })
    )
