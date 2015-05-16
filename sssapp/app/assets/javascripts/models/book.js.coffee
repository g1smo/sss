class Sssap.Models.Book extends Backbone.Model
    url: -> "books/" + this.id

class Sssap.Models.Books extends Backbone.Collection
    model: Sssap.Models.Book
    url: "books"
