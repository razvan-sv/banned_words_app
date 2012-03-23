window.bind_trash_bins = (name)->
  $(name).mouseover ->
    $("a", this).show()

  $(name).mouseout ->
    $("a", this).hide()

$(document).ready ->
  bind_trash_bins(".comment")
  bind_trash_bins(".one-bw")