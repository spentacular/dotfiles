
hs.window.animationDuration = 0

-- hotkeys
local mash = {"cmd", "alt"}
local winMash = {"shift", "alt"}

----------------------------------------------------------------------------------
-- Launch Applications

local focusKeys = {
  a="Atom",
  c="Google Chrome",
  e="TextEdit",
  s="Safari",
  t="iTerm"
}

for key in pairs(focusKeys) do
  hs.hotkey.bind(mash, key, function()
    hs.application.launchOrFocus(focusKeys[key])
  end)
end
----------------------------------------------------------------------------------
-- Half Window Bindings

local halfWindowKeys = {
  h={x=0, y=0, w=0.5, h=1},
  j={x=0, y=0.5, w=1, h=0.5},
  k={x=0, y=0, w=1, h=0.5},
  l={x=0.5, y=0, w=0.5, h=1}
}

for key in pairs(halfWindowKeys) do
  hs.hotkey.bind({"alt"}, key, function()
    local win = hs.window.focusedWindow()
    if win then win:moveToUnit(halfWindowKeys[key]) end
  end)
end

----------------------------------------------------------------------------------
-- Quarter Corner Window Bindings

local quarterCornerWindowKeys = {
  ['1']={x=0, y=0, w=0.5, h=0.5},
  ['2']={x=0.5, y=0, w=0.5, h=0.5},
  ['3']={x=0, y=0.5, w=0.5, h=0.5},
  ['4']={x=0.5, y=0.5, w=0.5, h=0.5}
}

for key in pairs(quarterCornerWindowKeys) do
  hs.hotkey.bind({'alt'}, key, function()
    local win = hs.window.focusedWindow()
    if win then win:moveToUnit(quarterCornerWindowKeys[key]) end
  end)
end

----------------------------------------------------------------------------------
-- Quarter Column Window Bindings
local quarterColWindowKeys = {
  ['1']={x=0, y=0, w=0.25, h=1},
  ['2']={x=0.25, y=0, w=0.25, h=1},
  ['3']={x=0.5, y=0, w=0.25, h=1},
  ['4']={x=0.75, y=0, w=0.25, h=1}
}

for key in pairs(quarterColWindowKeys) do
  hs.hotkey.bind(winMash, key, function()
    local win = hs.window.focusedWindow()
    if win then win:moveToUnit(quarterColWindowKeys[key]) end
  end)
end

----------------------------------------------------------------------------------
-- Full Window Bindings
hs.hotkey.bind({"alt", "shift"}, "Return", function()
  local win = hs.window.focusedWindow()
  if win then win:moveToUnit({x=0, y=0, w=1, h=1}) end
end)

----------------------------------------------------------------------------------
-- Eighth Center Window Bindings
hs.hotkey.bind({"cmd", "shift"}, "Return", function()
  local win = hs.window.focusedWindow()
  if win then win:moveToUnit({x=0.1, y=0.1, w=0.8, h=0.8}) end
end)

----------------------------------------------------------------------------------
-- Network connection and disconnection
local wifiWatcher = nil
function ssidChangedCallback()
  newSSID = hs.wifi.currentNetwork()
  if newSSID then
    hs.alert.show("Network connected: " .. newSSID)
  else
    hs.alert.show("Network lost 💀")
  end
end
wifiWatcher = hs.wifi.watcher.new(ssidChangedCallback)
wifiWatcher:start()