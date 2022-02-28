local ok, buddy = pcall(require, "colorbuddy")

if not ok then
    return
end

buddy.colorscheme("onebuddy")
buddy.colorscheme("onebuddy", "light")
print(buddy.styles)

local M = {}

M.background = "dark"

M.toggle_light_dark = function ()
    if M.background == "dark" then
        M.background = "light"
    else
        M.background = "dark"
    end
    print(M.background)
    buddy.colorscheme(M.background)
end

return M
