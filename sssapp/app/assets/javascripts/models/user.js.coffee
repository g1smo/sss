class Sssapp.Models.User extends Backbone.Model
  url: -> "user/" + @id

class Sssapp.Models.Users extends Backbone.Collection
  url: "user"

class Sssapp.Models.UserBooks extends Backbone.Collection
  url: -> "user/" + @user
  model: Sssapp.Models.Book
