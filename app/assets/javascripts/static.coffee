board = null

HeatMap = {
  board: undefined

  init: ->
    HeatMap.board = new Board("#board", DVORAK_CONFIG)
    HeatMap.bindButtons()

  feed: ->
    HeatMap.board.clearBoard()
    HeatMap.board.feed($('#textfeed').val())
    HeatMap.board.heat()
    HeatMap.board.reset()

  bindButtons: ->
    $("#feed_btn").on "click", HeatMap.feed
  }
$(window).on "load", HeatMap.init
