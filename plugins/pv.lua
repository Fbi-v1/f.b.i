function run(msg, matches)
if msg.to.type == 'user' and not is_admin(msg) then
return "سلام اینجا پیوی رباته اگه کاری دارید:\n@DrCyber1736  @redteam_01_25"
end
end
return {
patterns = { 
"(.*)$",
},
run = run
}
