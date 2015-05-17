class Sssapp.Views.BookListItem extends Marionette.ItemView
  template: "#book-list-item-tpl"
  tagName: "tr"

class Sssapp.Views.BookList extends Marionette.CompositeView
  template: "#book-list-tpl"
  tagName: "table"
  className: "table table-hover"
  childViewContainer: "tbody"
  childView: Sssapp.Views.BookListItem
