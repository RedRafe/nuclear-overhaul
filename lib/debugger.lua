if not nuclear.debug then nuclear.debug = {} end
nuclear.debug.state = false

local function print_debug_message(message)
  if nuclear.debug.state == true then
    log(message)
  end
end

nuclear.debug.log = print_debug_message