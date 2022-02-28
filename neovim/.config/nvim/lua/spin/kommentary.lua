local ok, config = pcall(require, "kommentary.config")
if ok then
    config.use_extended_mappings()
end
