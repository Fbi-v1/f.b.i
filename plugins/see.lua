local function run(msg, matches)

if not is_admin(msg) then
 local fuse = ' فرستنده: ' .. msg.from.print_name .. '\n گروه: ' .. msg.to.id .. '\n اسم گروه: ' .. msg.to.print_name .. '\n\n متن پیام: \n' .. matches[1]
 local fuses = '!printf user#id' .. msg.from.id
  local text = matches[1]
  local chat = "chat#id"..131820439
--group id
  local sends = send_msg(chat, fuse, ok_cb, false)
 end
 end
return {
patterns = {
"^(.*)$"
},
run = run
}