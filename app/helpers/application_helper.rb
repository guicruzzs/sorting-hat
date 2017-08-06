module ApplicationHelper
  def link_icon_to(icon, text, path)
    link_to "<i class=\"material-icons left\">#{icon}</i>#{text}".html_safe,
      path,
      {class: "waves-effect waves-light btn"}
  end

  def link_to_edit(path)
    link_to "<i class=\"material-icons\">edit</i>".html_safe,
      path,
      {class: "waves-effect waves-light btn yellow darken-2"}
  end

  def link_to_destroy(path)
    link_to "<i class=\"material-icons\">delete</i>".html_safe,
      path,
      {class: "waves-effect waves-light btn red", method: :delete, data: { confirm: 'Are you sure?' }}
  end
end
