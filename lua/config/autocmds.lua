local autosave_group = vim.api.nvim_create_augroup("LazyVimAutosave", { clear = true })

-- Adiciona a regra de Autosave
vim.api.nvim_create_autocmd("FocusLost", {
  group = autosave_group,
  callback = function()
    vim.cmd.wa()
  end,
  desc = "Autosave ao perder o foco (alternar janela)",
})
