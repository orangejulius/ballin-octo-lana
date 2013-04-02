class window.BOL.ShowThingView extends Backbone.View
  initialize: ->
    @listenTo(@model, "change", @render)

  render: ->
    template_script = $('#thing-show-template')
    content =
      number: @model.get('number')
      string: @model.get('string')
    template = _.template(template_script.html(), content)
    @$el.html(template)
