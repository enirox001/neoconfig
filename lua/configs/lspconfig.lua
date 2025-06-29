require("nvchad.configs.lspconfig").defaults()

local servers = { "html", "cssls", "clangd", "dartls", "denols", "pyright", "rust_analyzer", "tsserver" }

vim.lsp.enable(servers)

-- Add LSP mappings
vim.api.nvim_set_keymap("n", "K", "<Cmd>lua vim.lsp.buf.hover()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "gd", "<Cmd>lua vim.lsp.buf.definition()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>ca", "<Cmd>lua vim.lsp.buf.code_action()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap(
  "x",
  "<leader>ca",
  "<Cmd>lua vim.lsp.buf.range_code_action()<CR>",
  { noremap = true, silent = true }
)
-- read :h vim.lsp.config for changing options of lsp servers
