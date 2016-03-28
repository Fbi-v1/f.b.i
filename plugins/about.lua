local function run(msg, matches)
    if matches[1] == 'about' then
        return "about:\nکانال تیم ادوان: @AdvanTM\nمدیران ربات:\n@janlou\n@amiraliiiiiiiii81\n@bestroid_admin\nبرای باخبر شدن از آخرین اخبار ادوان حتما عضو کانال ما بشید"
    end
end
return {
    patterns = {
        "^[!#/]([Aa]bout)$"
    },
    run = run
}