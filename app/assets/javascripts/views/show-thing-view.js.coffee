class window.BOL.ShowThingView extends Backbone.View
  initialize: ->
    this.listenTo(this.model, "change", this.render)

  render: ->
    template_script = $('#thing-show-template')
    content =
      number: @model.get('number')
      string: @model.get('string')
    template = _.template(template_script.html(), content)
    this.$el.html(template)
