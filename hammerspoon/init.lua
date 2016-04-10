
hs.window.animationDuration = 0

-- hotkeys
local mash = {"cmd", "alt"}

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
