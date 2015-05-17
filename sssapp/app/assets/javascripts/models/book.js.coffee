class Sssapp.Models.Book extends Backbone.Model
  url: ->
    url = "book"
    url += "/" + @id if @id
    url

  idAttribute:"_id"

class Sssapp.Models.Books extends Backbone.Collection
  model: Sssapp.Models.Book
  url: "book"

class Sssapp.Models.MyBooks extends Backbone.Collection
  model: Sssapp.Models.Book
  url: "book/mybook"

class Sssapp.Models.BookLookup extends Backbone.Model
  url: -> "book/lookup/" + @id
