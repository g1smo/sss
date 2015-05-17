class Sssapp.Views.BookListItem extends Marionette.ItemView
  template: "#book-list-item-tpl"
  tagName: "tr"

class Sssapp.Views.BookList extends Marionette.CompositeView
  template: "#book-list-tpl"
  tagName: "table"
  className: "table table-hover"
  childViewContainer: "tbody"
  childView: Sssapp.Views.BookListItem

class Sssapp.Views.BookListItemMine extends Marionette.ItemView
  template: "#book-list-item-mine-tpl"
  tagName: "tr"

  events:
    "click [data-ui-click=delete]": "deleteBook"

  deleteBook: ->
    @model.destroy()

class Sssapp.Views.BookListMine extends Marionette.CompositeView
  template: "#book-list-tpl"
  tagName: "table"
  className: "table table-hover"
  childViewContainer: "tbody"
  childView: Sssapp.Views.BookListItemMine
