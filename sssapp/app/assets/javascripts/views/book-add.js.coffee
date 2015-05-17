class Sssapp.Views.BookAdd extends Marionette.ItemView
  template: "#book-add-tpl"

  events:
    "submit form": "submitForm"
    "click [data-ui-click=lookup-isbn]": "lookupData"

  ui:
    isbn: "[name=isbn]"

  submitForm: (ev) ->
    ev.preventDefault()
    data = {}
    _.each @$("form").serializeArray(), (item) ->
      data[item.name] = item.value

    @model.save data,
      success: ->
        window.Sssapp.Router.navigate "#books/mine", { trigger: true }

  lookupData: ->
    isbn = @ui.isbn.val()
    model = new Sssapp.Models.BookLookup
      id: isbn

    @$("input").attr "disabled", true

    model.fetch()
    model.on "sync", (data) =>
      @$("input").attr "disabled", false
      
      _.each _.keys(data.attributes), (key) ->
        @$("input[name=#{key}]").val data.get key

