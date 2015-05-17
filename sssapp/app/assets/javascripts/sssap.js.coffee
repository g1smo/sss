window.Sssapp =
  Models: {}
  Collections: {}
  Views: {}

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
    ""               : "home"
    "books/browse"   : "allBooks"
    "books/mine"     : "myBooks"
    "books/add"      : "addBook"
    "users"          : "userList"
    "users/:id"      : "userBooks"
    "books/edit/:id" : "editBook"

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

  addBook: ->
    book = new Sssapp.Models.Book
    view = new Sssapp.Views.BookAdd
      model: book

    @show view

  editBook: (id) ->
    book = new Sssapp.Models.Book
    book.id = id
    book.fetch()

    view = new Sssapp.Views.BookAdd
      model: book

    @listenTo book, "sync", ->
      view.populateForm book

    @listenTo view, "all", (ev) ->

    @show view

  userList: ->
    collection = new Sssapp.Models.Users
    collection.fetch()

    view = new Sssapp.Views.UserList
      collection: collection

    @show view

  userBooks: (id) ->
    collection = new Sssapp.Models.UserBooks
    collection.user = id
    collection.fetch()

    view = new Sssapp.Views.BookList
      collection: collection

    @show view

  show: (view) ->
    app.main.show view

app.addInitializer ->
  window.Sssapp.Router = new router
  Backbone.history.start()

$ ->
  app.start()
