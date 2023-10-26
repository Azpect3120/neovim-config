-- Prettier
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

function format_buffer ()
  local filetype = vim.bo.filetype
  if filetype == "go" then
    vim.api.nvim_command("%!gofmt -s")
  else
    vim.api.nvim_command(":PrettierAsync")
  end
end

-- Keybind
vim.keymap.set('n', '<leader>p', ':lua format_buffer()<CR>')
