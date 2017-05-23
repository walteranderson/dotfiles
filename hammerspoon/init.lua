local window = require 'hs.window' local screen = require 'hs.screen'
local hotkey = require 'hs.hotkey'

local configPath = os.getenv 'HOME' .. '/.hammerspoon/'


-- Global Settings
window.animationDuration = 0
hs.grid.setGrid '8x8'

-- Reload on config change
function reloadConfig(files)
    doReload = false
    for _,file in pairs(files) do
        if file:sub(-4) == ".lua" then
            doReload = true
        end
    end
    if doReload then
        hs.reload()
    end
end
hs.pathwatcher.new(configPath, reloadConfig):start()
hs.alert.show('Config Loaded')

-- Movement Shortcuts
local Move = require 'movement'

-- primary movement modifier
local primaryMovementModifier = {'cmd', 'ctrl'}

hotkey.bind(primaryMovementModifier, 'h', Move.left)
hotkey.bind(primaryMovementModifier, 'l', Move.right)

hotkey.bind(primaryMovementModifier, 'f', Move.fullscreen)
hotkey.bind(primaryMovementModifier, 'c', Move.center)
hotkey.bind(primaryMovementModifier, '-', Move.toggleGrid)

-- secondary movement modifier
local secondaryMovementModifier = {'cmd', 'shift', 'ctrl'}

-- hotkey.bind(primaryMovementModifier, 'h', Move.leftQuarter)
-- hotkey.bind(primaryMovementModifier, 'l', Move.rightQuarter)
--
-- hotkey.bind(primaryMovementModifier, 'j', Move.downQuarter)
-- hotkey.bind(primaryMovementModifier, 'k', Move.upQuarter)


--- Sizing Shortcuts
local Sizing = require 'sizing'

local sizeModifier = {'cmd', 'option'}

-- hotkey.bind(sizeModifier, 'h', Sizing.thinner)
-- hotkey.bind(sizeModifier, 'l', Sizing.thicker)
-- hotkey.bind(sizeModifier, 'k', Sizing.taller)
-- hotkey.bind(sizeModifier, 'j', Sizing.shorter)
