local ok, configs = pcall(require, "nvim-treesitter.configs")
if not ok then
    return
end

configs.setup {
    ensure_installed = "maintained",
    sync_install = false,
    ignore_install = { "" }, -- List of parsers to ignore installing
    highlight = {
        enable = true, -- false will disable the whole extension
        disable = { "" }, -- list of language that will be disabled
        additional_vim_regex_highlighting = false,
    },
    indent = { enable = true, disable = { "" } },
    autopairs = true,
}
