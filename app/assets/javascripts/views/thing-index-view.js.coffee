class window.BOL.ThingIndexView extends Backbone.View
  initialize: ->
    @things = new window.BOL.ThingCollection()
    @listenTo(@things, "reset", @render)
    @things.fetch()

  render: ->
    out = "<h1>Things</h1>"
    @things.each( (thing)->
      out += thing.id + " " + thing.escape('number') + " "
      out += thing.escape('string') + " "
      out += "<a href=\"#/things/" + thing.id + "\">edit</a><br>"
    )

    $('body').html(out)
