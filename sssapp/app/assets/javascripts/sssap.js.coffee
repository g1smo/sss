window.Sssapp =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}

app = new Marionette.Application
window.Sssapp.App = app

app.addRegions
  sidebar: "#sidebar"
  main: "#main"

app.on "before:start", ->
  sidebar = new Sssapp.Views.Sidebar
  sidebar.render()

  app.sidebar.show sidebar

class router extends Backbone.Router
  routes:
    "": "home"
    "books/browse": "allBooks"
    "books/mine": "myBooks"

  home: ->
    console.log "home!"

  allBooks: ->
    books = new Sssapp.Models.Books
    books.fetch()

    view = new Sssapp.Views.BookList
      collection: books

    books.on "sync", =>
      @show view

  myBooks: ->
    books = new Sssapp.Models.MyBooks
    books.fetch()

    view = new Sssapp.Views.BookListMine
      collection: books

    books.on "sync", =>
      @show view

  show: (view) ->
    app.main.show view

app.addInitializer ->
  a = new router
  Backbone.history.start()

$ ->
  app.start()
