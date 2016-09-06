board = null

init = ->
  board = new Board("#board")
  # board.testFill()
  bindButtons()

bindButtons = ->
  $("#button").on "click", ->
    board.testFill()

$(window).on "load", init
