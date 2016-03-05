do

function run(msg, matches)
       if not is_momod(msg) then
        return "For owner and admins!"
       end
	  local data = load_data(_config.moderation.data)
      local group_link = data[tostring(msg.to.id)]['settings']['set_link']
       if not group_link then 
        return "You must first create a new link"
       end
         local text = "لينک گروه :\nقدرت برگرفته از ادوان\n"..group_link
          send_large_msg('user#id'..msg.from.id, text.."\n", ok_cb, false)
end

return {
  patterns = {
    "^[!/](linkpv)$"
  },
  run = run
}

end
