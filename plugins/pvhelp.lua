function run(msg, matches)
if msg.to.type == 'user' and matches[1] == 'راهنما' then
    return "سلام خدمت شما کاربر عزیز،\nبرای مشاهده لیست گروه ها دستور چت ها را وارد کنید،\nبرای ورود به هر گروه از دستور زیر استفاده کنید:\nورود iD"
end
if msg.to.type == 'user' and matches[1] == 'help' then
    return "سلام خدمت شما کاربر عزیز،\nبرای مشاهده لیست گروه ها دستور چت ها را وارد کنید،\nبرای ورود به هر گروه از دستور زیر استفاده کنید:\nورود iD"
end
if msg.to.type == 'chat' and matches[1] == 'help' then
    return "برای مشاهده دستورات از دستور راهنما استفاده کنید"
end
end
return {
patterns = { 
"(راهنما)$",
"[!/#]([Hh][Ee][Ll][Pp])$"
},
run = run
}