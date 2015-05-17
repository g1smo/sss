class Sssapp.Views.UserListItem extends Marionette.ItemView
  template: "#user-list-item-tpl"
  tagName: "tr"

class Sssapp.Views.UserList extends Marionette.CompositeView
  template: "#user-list-tpl"
  tagName: "table"
  className: "table table-hover"
  childViewContainer: "tbody"
  childView: Sssapp.Views.UserListItem
