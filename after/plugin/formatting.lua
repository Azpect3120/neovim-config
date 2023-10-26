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

-- Prettier remap
vim.keymap.set('n', '<leader>p', ':PrettierAsync<CR>')

-- GO (gfmt)
local autoformat_enabled = false

-- Function to toggle auto-formatting on/off
function toggle_autoformat()
    autoformat_enabled = not autoformat_enabled
    if autoformat_enabled then
        vim.api.nvim_out_write("GO Auto-formatting enabled\n")
        vim.api.nvim_exec([[
            augroup GoAutoformat
                autocmd!
                autocmd FileType go autocmd BufWritePre <buffer> :silent %!gofmt -s
            augroup END
        ]], true)
    else
        vim.api.nvim_out_write("GO Auto-formatting disabled\n")
        vim.cmd("autocmd! GoAutoformat")
    end
end

-- Map a keybind to toggle auto-formatting
vim.api.nvim_set_keymap('n', '<leader>af', ':lua toggle_autoformat()<CR>', { noremap = true, silent = true })

