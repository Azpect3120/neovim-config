-- Prettier
vim.g["prettier#autoformat"] = 1
vim.g["prettier#config#config_precedence"] = "prefer-file"
vim.g["prettier#config#config_files"] = {
  "package.json",
  ".prettierrc",
  ".prettierrc.json",
  ".prettierrc.yaml",
  ".prettierrc.yml",
  ".prettierrc.js",
  ".prettierrc.cjs",
}

vim.keymap.set('n', '<leader>p', ':Prettier<CR>')

-- GO (gfmt)
vim.api.nvim_exec([[
  autocmd FileType go autocmd BufWritePre <buffer> :silent %!gofmt -s
]], false)
