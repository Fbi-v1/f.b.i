function run(msg, matches)
if msg.to.type == 'user' and not is_admin(msg) then
return "سلام اینجا پیوی رباته اگه کاری دارید:\n@janlou\n@bestroid_admin\n@amiraliiiiiiiii81"
end
end
return {
patterns = { 
"(.*)$",
},
run = run
}