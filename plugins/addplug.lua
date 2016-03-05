local function run(msg, matches)
 local text = matches[2]
   if not is_admin(msg) then
     return "فقط سودو"
   end
 if matches[1] == "اضافه پلاگین" then
  return text
 else
  local file = io.open("./plugins/"..matches[1], "w")
  file:write(text)
  file:flush()
  file:close()
  return "به پلاگین ها اضافه شد"
 end
end

return {
 description = "Simplest plugin ever!",
 usage = {
  "!echo [text] : return text",
  "!echo> [ext] [text] : save text to file",
 },
 patterns = {
  "^اضافه پلاگین ([^%s]+) (.*)$",
 },
 run = run
}
