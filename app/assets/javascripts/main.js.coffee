bind_trash_bins = ->
  $(".comment").mouseover ->
    $("a", this).show()

  $(".comment").mouseout ->
    $("a", this).hide()

$(document).ready ->
  bind_trash_bins()