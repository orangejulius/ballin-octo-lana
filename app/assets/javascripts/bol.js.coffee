window.BOL =
  init:  ->
    new window.BOL.ThingsRouter()
    Backbone.history.start()
