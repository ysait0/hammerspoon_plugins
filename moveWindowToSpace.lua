function moveWindowToSpace(sp)
  local screen = hs.screen.mainScreen()
  local space = hs.spaces.allSpaces()[screen:getUUID()]
  local spaceID_current = hs.spaces.focusedSpace()
  print(space, spaceID_current)
  if sp > #space then
    hs.alert.show("no space "..sp)
    do return end
  else
    for idx,spaceID in pairs(space) do
      if spaceID == spaceID_current then
        spaceIDX_current = idx
        do break end
      end
    end
  end
  distance = sp - spaceIDX_current
  if distance < 0 then
    for i=1, math.abs(distance) do
      hs.eventtap.keyStroke({"alt"}, "h") -- set your own system hotkey to move left a space
    end
  elseif distance > 0 then
    for i=1, math.abs(distance) do
      hs.eventtap.keyStroke({"alt"}, "l") -- set your own system hotkey to move right a space
    end
  else
    hs.alert.show("space "..sp.." now")
    do return end
  end
  local win = hs.window.focusedWindow()
  hs.spaces.moveWindowToSpace(win, space[sp])
end

hs.hotkey.bind({"cmd"}, "1", function() moveWindowToSpace(1) end)
hs.hotkey.bind({"cmd"}, "2", function() moveWindowToSpace(2) end)
hs.hotkey.bind({"cmd"}, "3", function() moveWindowToSpace(3) end)
hs.hotkey.bind({"cmd"}, "4", function() moveWindowToSpace(4) end)
hs.hotkey.bind({"cmd"}, "5", function() moveWindowToSpace(5) end)
