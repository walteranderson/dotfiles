local window = require('hs.window')
local grid = require('hs.grid')
local geo = require('hs.geometry')

function getWindow()
  local window = window.focusedWindow()
  assert(window, 'could not find window')

  return window
end

function set(cell)
  grid.set(getWindow(), cell)
end

local Move = {}

function Move.toggleGrid()
  grid.toggleShow()
end

function Move.center()
  set('1,1 6x6')
end

function Move.fullscreen()
  grid.maximizeWindow(getWindow())
end

function Move.left()
  local win = getWindow()

  local initial = geo.new('0,0 4x8')
  local larger = geo.new('0,0 5x8')
  local smaller = geo.new('0,0 3x8')
  local cell = grid.get(win)

  if cell:equals(initial) then
    grid.set(win, smaller)
    return
  elseif cell:equals(smaller) then
    grid.set(win, larger)
    return
  end

  grid.set(win, initial)
end

function Move.right()
  local win = getWindow()

  local initial = geo.new('4,0 4x8')
  local larger = geo.new('3,0 5x8')
  local smaller = geo.new('5,0 3x8')
  local cell = grid.get(win)

  if cell:equals(initial) then
    grid.set(win, smaller)
    return
  elseif cell:equals(smaller) then
    grid.set(win, larger)
    return
  end

  grid.set(win, initial)
end

return Move
