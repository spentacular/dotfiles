
hs.window.animationDuration = 0

-- hotkeys
local mash = {"cmd", "alt"}
local winMash = {"shift", "alt"}

----------------------------------------------------------------------------------
-- Launch Applications

hs.hotkey.bind(mash, 't', function ()
  hs.application.launchOrFocus("Terminal")
end)

hs.hotkey.bind(mash, 'e', function ()
  hs.application.launchOrFocus("TextEdit")
end)

hs.hotkey.bind(mash, 'g', function ()
  hs.application.launchOrFocus("Google Chrome")
end)

hs.hotkey.bind(mash, 's', function ()
  hs.application.launchOrFocus("Sublime Text")
end)

----------------------------------------------------------------------------------
-- Window Bindings

hs.hotkey.bind({"alt"}, "H", function()
  if hs.window.focusedWindow() then
    local win = hs.window.focusedWindow()
    local f = win:frame()
    local screen = win:screen()
    local max = screen:frame()

    f.x = max.x
    f.y = max.y
    f.w = max.w / 2
    f.h = max.h
    win:setFrame(f)
  else
    hs.alert.show("No active window")
  end
end)

hs.hotkey.bind({"alt"}, "L", function()
  if hs.window.focusedWindow() then
    local win = hs.window.focusedWindow()
    local f = win:frame()
    local screen = win:screen()
    local max = screen:frame()

    f.x = max.x + (max.w / 2)
    f.y = max.y
    f.w = max.w / 2
    f.h = max.h
    win:setFrame(f)
  else
    hs.alert.show("No active window")
  end
end)

hs.hotkey.bind({"alt"}, "K", function()
  if hs.window.focusedWindow() then
    local win = hs.window.focusedWindow()
    local f = win:frame()
    local screen = win:screen()
    local max = screen:frame()

    f.x = max.x
    f.y = max.y
    f.w = max.w
    f.h = max.h / 2
    win:setFrame(f)
  else
    hs.alert.show("No active window")
  end
end)

hs.hotkey.bind({"alt"}, "J", function()
  if hs.window.focusedWindow() then
    local win = hs.window.focusedWindow()
    local f = win:frame()
    local screen = win:screen()
    local max = screen:frame()

    f.x = max.x
    f.y = max.y + (max.h / 2)
    f.w = max.w
    f.h = max.h / 2
    win:setFrame(f)
  else
    hs.alert.show("No active window")
  end
end)

----------------------------------------------------------------------------------
-- Quarter Window Bindings
hs.hotkey.bind(winMash, "1", function()
  if hs.window.focusedWindow() then
    local win = hs.window.focusedWindow()
    local f = win:frame()
    local screen = win:screen()
    local max = screen:frame()

    f.x = max.x
    f.y = max.y
    f.w = max.w / 4
    f.h = max.h
    win:setFrame(f)
  else
    hs.alert.show("No active window")
  end
end)

hs.hotkey.bind(winMash, "2", function()
  if hs.window.focusedWindow() then
    local win = hs.window.focusedWindow()
    local f = win:frame()
    local screen = win:screen()
    local max = screen:frame()

    f.x = max.x + (max.w / 4)
    f.y = max.y
    f.w = max.w / 4
    f.h = max.h
    win:setFrame(f)
  else
    hs.alert.show("No active window")
  end
end)

hs.hotkey.bind(winMash, "3", function()
  if hs.window.focusedWindow() then
    local win = hs.window.focusedWindow()
    local f = win:frame()
    local screen = win:screen()
    local max = screen:frame()

    f.x = max.x + (2 * (max.w / 4))
    f.y = max.y
    f.w = max.w / 4
    f.h = max.h
    win:setFrame(f)
  else
    hs.alert.show("No active window")
  end
end)

hs.hotkey.bind(winMash, "4", function()
  if hs.window.focusedWindow() then
    local win = hs.window.focusedWindow()
    local f = win:frame()
    local screen = win:screen()
    local max = screen:frame()

    f.x = max.x + (3 * (max.w / 4))
    f.y = max.y
    f.w = max.w / 4
    f.h = max.h
    win:setFrame(f)
  else
    hs.alert.show("No active window")
  end
end)

----------------------------------------------------------------------------------
-- Quad Corner Window Bindings
hs.hotkey.bind({"alt"}, "1", function()
  if hs.window.focusedWindow() then
    local win = hs.window.focusedWindow()
    local f = win:frame()
    local screen = win:screen()
    local max = screen:frame()

    f.x = max.x
    f.y = max.y
    f.w = max.w / 2
    f.h = max.h / 2
    win:setFrame(f)
  else
    hs.alert.show("No active window")
  end
end)

hs.hotkey.bind({"alt"}, "2", function()
  if hs.window.focusedWindow() then
    local win = hs.window.focusedWindow()
    local f = win:frame()
    local screen = win:screen()
    local max = screen:frame()

    f.x = max.x + (max.w / 2)
    f.y = max.y
    f.w = max.w / 2
    f.h = max.h / 2
    win:setFrame(f)
  else
    hs.alert.show("No active window")
  end
end)

hs.hotkey.bind({"alt"}, "3", function()
  if hs.window.focusedWindow() then
    local win = hs.window.focusedWindow()
    local f = win:frame()
    local screen = win:screen()
    local max = screen:frame()

    f.x = max.x + (max.w / 2)
    f.y = max.y + (max.h / 2)
    f.w = max.w / 2
    f.h = max.h / 2
    win:setFrame(f)
  else
    hs.alert.show("No active window")
  end
end)

hs.hotkey.bind({"alt"}, "4", function()
  if hs.window.focusedWindow() then
    local win = hs.window.focusedWindow()
    local f = win:frame()
    local screen = win:screen()
    local max = screen:frame()

    f.x = max.x
    f.y = max.y + (max.h / 2)
    f.w = max.w / 2
    f.h = max.h / 2
    win:setFrame(f)
  else
    hs.alert.show("No active window")
  end
end)

----------------------------------------------------------------------------------
-- Full Center Window Bindings
hs.hotkey.bind({"alt", "shift"}, "Return", function()
  if hs.window.focusedWindow() then
    local win = hs.window.focusedWindow()
    local f = win:frame()
    local screen = win:screen()
    local max = screen:frame()

    f.x = max.x
    f.y = max.y
    f.w = max.w
    f.h = max.h
    win:setFrame(f)
  else
    hs.alert.show("No active window")
  end
end)

----------------------------------------------------------------------------------
-- Network connection and disconnection
local wifiWatcher = nil
function ssidChangedCallback()
    newSSID = hs.wifi.currentNetwork()
    if newSSID then
      hs.alert.show("Network connected: " .. newSSID)
    else
      hs.alert.show("Network lost :(")
    end
end
wifiWatcher = hs.wifi.watcher.new(ssidChangedCallback)
wifiWatcher:start()