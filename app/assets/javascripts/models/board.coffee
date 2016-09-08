class Board
  constructor: (selector, config = DVORAK_CONFIG) ->
    @selector = selector
    @config = config
    @reset()

  reset: ->
    @board = $(@selector)[0].contentDocument
    @maxOccurence = 0
    @map = {}
    @stepper = 1

  clearBoard: ->
    for i in [1..61]
      key = $(@board).find("path:nth-child(#{i})").not('.excluded')
      key.css 'fill', "rgb(255, 255, 255)"

  feed: (text) ->
    for char in text
      continue if char == ' '
      c = char.toLowerCase()
      @map[c] = @map[c] || 0
      @map[c] += 1

    @normalize()

  heat: ->
    isShiftNeeded = (char) =>
      !!(~@config.needsShift.join().indexOf(char.toLowerCase()))

    seekOrder = (char) =>
      order = 0
      for row, row_no in @config.rows
        for keys, key_no in row
          order += 1
          return order if ~(keys || '').indexOf(char.toLowerCase())
      0

    for char, count of @map
      @draw(seekOrder(char), count)

  draw: (order, count) ->
    color = (255 - (count * @stepper)) | 0
    key = $(@board).find("path:nth-child(#{order})").not('.excluded')
    key.css 'fill', "rgb(255, #{color}, #{color})"

  normalize: ->
    max = -1
    for char, count of @map
      if count > max then max = count

    @stepper = (255 / max)

window.Board = Board
