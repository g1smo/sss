class Sssapp.Models.Book extends Backbone.Model
  url: -> "book/" + this.id

class Sssapp.Models.Books extends Backbone.Collection
  model: Sssapp.Models.Book
  url: "book"
