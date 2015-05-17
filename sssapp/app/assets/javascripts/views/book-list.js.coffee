class Sssapp.Views.BookListItem extends Marionette.ItemView
  template: "#book-list-item-tpl"
  tagName: "tr"

class Sssapp.Views.BookList extends Marionette.CompositeView
  template: "#book-list-tpl"
  childViewContainer: "tbody"
  childView: Sssapp.Views.BookListItem

class Sssapp.Views.BookListItemMine extends Marionette.ItemView
  template: "#book-list-item-mine-tpl"
  tagName: "tr"

  events:
    "click [data-ui-click=delete]": "deleteBook"

  deleteBook: (ev) ->
    ev.preventDefault()
    @model.destroy()

class Sssapp.Views.BookListMine extends Marionette.CompositeView
  template: "#book-list-mine-tpl"
  childViewContainer: "tbody"
  childView: Sssapp.Views.BookListItemMine
