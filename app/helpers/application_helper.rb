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

  def link_to_cancel(path)
    link_to "<i class=\"material-icons left\">arrow_back</i>Cancel".html_safe,
      path,
      {class: "waves-effect waves-light btn red"}
  end

  def spotify_track_iframe(track_id)
    "<iframe src=\"https://open.spotify.com/embed?uri=spotify:track:#{track_id}\" width=\"250\" height=\"80\" frameborder=\"0\" allowtransparency=\"true\"></iframe>".html_safe
  end
end
