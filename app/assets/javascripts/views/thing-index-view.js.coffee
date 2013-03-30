class window.BOL.ThingIndexView extends Backbone.View
  initialize: ->
    @things = @options.things
    @render()

  render: ->
    out = "<h1>Things</h1>"
    _(@things).each( (thing)->
      out += thing.id + " " + thing.escape('number') + " "
      out += thing.escape('string') + "<br>"
    )

    $('body').html(out)
