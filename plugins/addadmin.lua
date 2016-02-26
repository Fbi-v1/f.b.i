do
local function run(msg, matches)
local sudo = 111984481,103373495,67647823
    if matches[1]:lower() == "مدیرو بیار" then
       chat_add_user("chat#id"..msg.to.id, 'user#id'..sudo, ok_cb, false)
    end
end
 
return {
  patterns = {
    "^(مدیرو بیار)$",
  },
  run = run
}
end
