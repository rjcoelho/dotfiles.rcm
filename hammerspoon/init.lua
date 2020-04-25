-- Watch Hammerspoon configuration and reload it automatically
configreloader = hs.pathwatcher.new(os.getenv('HOME') .. '/.hammerspoon/init.lua', function()
  hs.timer.delayed.new(0.1, hs.reload):start()
end):start()

-- Launch or focus on applications
local mods_app = {'cmd', 'shift'}
remap = hs.hotkey.bind
remap(mods_app, 'b', function () hs.application.launchOrFocus('Brave Browser') end)
remap(mods_app, 'c', function () hs.application.launchOrFocus('Visual Studio Code') end)
remap(mods_app, 'm', function () hs.application.launchOrFocus('Mail') end)
remap(mods_app, 'n', function () hs.application.launchOrFocus('Brave Browser Nightly') end)
remap(mods_app, 's', function () hs.application.launchOrFocus('Slack') end)
remap(mods_app, 't', function () hs.application.launchOrFocus('iTerm') end)
remap(mods_app, 'y', function () hs.application.launchOrFocus('Kitty') end)
remap(mods_app, 'z', function () hs.application.launchOrFocus('Zoom.us') end)

hs.alert.show('Config loaded')
