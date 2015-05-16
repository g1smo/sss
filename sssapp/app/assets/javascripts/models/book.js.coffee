class Sssapp.Models.Book extends Backbone.Model
  url: -> "book/" + this.id
  idAttribute:"_id"

class Sssapp.Models.Books extends Backbone.Collection
  model: Sssapp.Models.Book
  url: "book"

class Sssapp.Models.MyBooks extends Backbone.Collection
  model: Sssapp.Models.Book
  url: "book/mybook"
