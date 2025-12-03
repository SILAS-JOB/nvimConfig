-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

-- Arquivo: ~/.config/nvim/lua/plugins/extras/autosave.lua

-- Cria um grupo de AutoComandos (boas práticas)
local autosave_group = vim.api.nvim_create_augroup("LazyVimAutosave", { clear = true })

-- Adiciona a regra de Autosave
vim.api.nvim_create_autocmd("FocusLost", {
  group = autosave_group,
  callback = function()
    -- Salva todos os buffers modificados (Write All)
    vim.cmd.wa()
  end,
  desc = "Autosave ao perder o foco (alternar janela)",
})
