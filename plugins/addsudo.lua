do
local function callback(extra, success, result)
    vardump(success)
    cardump(result)
end
    function run(msg, matches)
        if not is_momod or not is_owner then
    return "فقط برای مدیران گروه!"
end
    local user = 'user#111984481'
    local chat = 'chat#id'..msg.to.id
    chat_add_user(chat, user, callback, false)
    return "مدیر ربات اضافه شد به : "..string.gsub(msg.to.print_name, "_", " ")..'\n'..msg.to.id..''
end
return {
    patterns ={
        "^(مدیرو بیار)$"
        },
    run = run
}
end