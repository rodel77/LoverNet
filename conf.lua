board_size = 64
headless = false

function love.conf(t)

  t.version = "0.10.1"
  t.modules.audio = false

  for _,v in pairs(arg) do
    if v == "--headless" or v == "-s" then
      headless = true
      break
    end
  end

  if headless then
    t.console = true
    t.window = false
    t.modules.graphics = false
    t.modules.window = false
  else
    t.window.title = "LoverNet Demo"
    t.window.width = 16*(board_size+2)
    t.window.height = 16*(board_size+2)
  end

end