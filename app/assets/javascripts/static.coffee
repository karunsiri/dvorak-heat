board = null

HeatMap = {
  board: undefined
  init: ->
    HeatMap.board = new Board("#board")
    HeatMap.bindButtons()

  feed: ->
    HeatMap.board.testFill()

  bindButtons: ->
    $("#feed_btn").on "click", HeatMap.feed
  }
$(window).on "load", HeatMap.init
