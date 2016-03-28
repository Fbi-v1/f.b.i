do

local function run(msg, matches)
  if matches[1]:lower() == 'version' then -- Versoin of TeleAdvan: V3!
     send_document(get_receiver(msg), "./data/advan_v3.webp", ok_cb, false)
    return 'Version of TeleAdvan: V3!'
  end
end
return {
  patterns = {
    "^!([Vv][Ee][Rr][Ss][Ii][Oo][Nn])$"
  }, 
  run = run 
}

end