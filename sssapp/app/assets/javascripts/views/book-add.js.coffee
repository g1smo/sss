class Sssapp.Views.BookAdd extends Marionette.ItemView
  template: "#book-add-tpl"
  events:
  	"submit form": "submitForm"

  submitForm: ->
  	console.log @$("form").serialize()