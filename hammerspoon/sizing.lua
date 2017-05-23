local window = require('hs.window')
local grid = require('hs.grid')

local Sizing = {}

function Sizing.thinner()
  local win = window.focusedWindow()
  if not win then return end

  grid.resizeWindowThinner(win)
end

function Sizing.thicker()
  local win = window.focusedWindow()
  if not win then return end

  grid.resizeWindowWider(win)
end

function Sizing.taller()
  local win = window.focusedWindow()
  if not win then return end

  grid.resizeWindowTaller(win)
end

function Sizing.shorter()
  local win = window.focusedWindow()
  if not win then return end

  grid.resizeWindowShorter(win)
end

return Sizing
