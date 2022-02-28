local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
	return
end

require("spin.lsp.lsp-installer")
require("spin.lsp.handlers").setup()
