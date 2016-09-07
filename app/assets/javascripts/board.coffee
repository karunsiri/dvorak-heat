class Board
  constructor: (selector) ->
    @board = $(selector)[0].contentDocument
    @maxOccurence = 0
    @offset = [14, 14, 13, 12, 8]

  testFill: ->
    key = $(@board).find('path:nth-child(31)').not('.excluded')
    key.css 'fill', "#ff0000"

window.Board = Board
