local ok, theme = pcall(require, "onedark")
if ok then
    theme.setup {
        style = "dark",
        toggle_style_key = "<leader>cs",
        toggle_style_list = {'dark', 'light'},
    }
    theme.load()
else
  vim.notify("error loading colorscheme")
end

