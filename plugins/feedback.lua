do
 function run(msg, matches)
 
  local fuse = '📌 #فیدبک جدید\n\n👤 نام کاربری : @' .. msg.from.username .. '\n\n👤 نام کاربر : ' .. msg.from.print_name ..'\n\n👤 یوزر آی دی : ' .. msg.from.id .. '\n\n📝 متن پیام : \n' .. matches[1] 
 local fuses = '!printf user#id' .. msg.from.id
 
   local text = matches[1]
   local chat = "chat#id"..142254491
   --like : local chat = "chat#id"..12345678
   
  local sends = send_msg(chat, fuse, ok_cb, false)
  return '📨 پیام شما با موفقیت ارسال شد'
 
 end
 end
 return {
  
  description = "feedback",
 
  usage = "!feedback message",
  patterns = {
  "^[!/][Ff]eedback (.*)$"
 
  },
  run = run
 }