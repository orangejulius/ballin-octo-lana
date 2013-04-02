class window.BOL.ThingsRouter extends Backbone.Router
  routes:
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

  index: ->
    new window.BOL.ThingIndexView()
