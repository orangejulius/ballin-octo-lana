class BOL.Thing extends Backbone.Model
	url: 'things'
	twiceString: ->
		return @string + @string
