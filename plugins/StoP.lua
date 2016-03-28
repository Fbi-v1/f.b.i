--shared by @punisher_team
--admin: @punisher_official

local function tosticker(msg, success, result)
  local receiver = get_receiver(msg)
  if success then
    local file = 'data/stickers/'..msg.from.id..'.jpg'
    print('File downloaded to:', result)
    os.rename(result, file)
    print('File moved to:', file)
    send_photo(get_receiver(msg), file, ok_cb, false)
    redis:del("sticker:photo")
  else
    print('Error downloading: '..msg.id)
    send_large_msg(receiver, 'Failed, please try again!', ok_cb, false)
  end
end
local function run(msg,matches)
    local receiver = get_receiver(msg)
    local group = msg.to.id
    if msg.media then
      	if msg.media.type == 'document' and is_momod(msg) and redis:get("sticker:photo") then
      		if redis:get("sticker:photo") == 'waiting' then
        		load_document(msg.id, tosticker, msg)
      		end
      	end
    end
    if matches[1] == "استیکر به عکس" and is_momod(msg) then
    	redis:set("sticker:photo", "waiting")
    	return 'Please send your sticker now\nنظراتتون رو با دستور زیر به ما بدید:\n!feedback نظر'
    end
end
return {
  patterns = {
	"^(استیکر به عکس)$",
	"%[(document)%]",
  },
  run = run,
}
--shared by @punisher_team
--admin: @punisher_official