-- No animation
hs.window.animationDuration = 0

-- hotkeys
local alt = {'alt'}
local cmdAlt = {'cmd', 'alt'}
local shiftAlt = {'shift', 'alt'}
local cmdShift = {'cmd', 'shift'}

-- Launch Applications
local focusKeys = {
  a="Atom",
  c="Google Chrome",
  e="TextEdit",
  m="Messages",
  s="Safari",
  t="iTerm"
}

for key in pairs(focusKeys) do
  hs.hotkey.bind(cmdAlt, key, function()
    hs.application.launchOrFocus(focusKeys[key])
  end)
end

-- Window Bindings
local windowKeys = {
  h={x=0, y=0, w=0.5, h=1},
  j={x=0, y=0.5, w=1, h=0.5},
  k={x=0, y=0, w=1, h=0.5},
  l={x=0.5, y=0, w=0.5, h=1},
  y={x=0, y=0, w=0.5, h=0.5},
  u={x=0.5, y=0, w=0.5, h=0.5},
  b={x=0, y=0.5, w=0.5, h=0.5},
  n={x=0.5, y=0.5, w=0.5, h=0.5}
}

for key in pairs(windowKeys) do
  hs.hotkey.bind(alt, key, function()
    local win = hs.window.focusedWindow()
    if win then win:moveToUnit(windowKeys[key]) end
  end)
end

-- Quarter Column Window Bindings
local quarterColWindowKeys = {
  ['1']={x=0, y=0, w=0.25, h=1},
  ['2']={x=0.25, y=0, w=0.25, h=1},
  ['3']={x=0.5, y=0, w=0.25, h=1},
  ['4']={x=0.75, y=0, w=0.25, h=1}
}

for key in pairs(quarterColWindowKeys) do
  hs.hotkey.bind(shiftAlt, key, function()
    local win = hs.window.focusedWindow()
    if win then win:moveToUnit(quarterColWindowKeys[key]) end
  end)
end

-- Full Width Window Bindings
hs.hotkey.bind(shiftAlt, "Return", function()
  local win = hs.window.focusedWindow()
  if win then win:moveToUnit({x=0, y=0, w=1, h=1}) end
end)

-- Center With Padding
hs.hotkey.bind(cmdShift, "Return", function()
  local win = hs.window.focusedWindow()
  if win then win:moveToUnit({x=0.1, y=0.1, w=0.8, h=0.8}) end
end)

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

-- Reload Config
hs.hotkey.bind(cmdShift, "R", function()
  hs.reload()
end)
hs.alert.show("Config loaded")
