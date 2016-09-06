STEPPER = 10

class Board
  constructor: (selector) ->
    @board = $(selector)[0].contentDocument
    @current = 0

  testFill: ->
    key = @board.getElementById("rect2186")
    @current += STEPPER
    key.style.fill = "rgb(255, #{255-@current}, #{255-@current})"

window.Board = Board
