#= require bol
#= require jquery
#= require backbone-rails
#= require_tree ./templates
#= require_tree ./models
#= require_tree ./views
#= require_tree ./routers
#= require_self
#= require home

window.BOL.init =  ->
    new window.BOL.ThingsRouter
    Backbone.history.start()
