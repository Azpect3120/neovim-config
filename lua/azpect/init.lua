require('azpect.remap')
require('azpect.packer')
require('azpect.setup')
require('azpect.lsp')

-- Emmet remaps
vim.g.user_emmet_mode = 'n'
vim.g.user_emmet_leader_key = ','

vim.g.user_emmet_settings = {
    html = {
        default_attributes = {
            option = {value = vim.NIL},
            textarea = {id = vim.NIL, name = vim.NIL, cols = 10, rows = 10},
        },
        snippets = {
            ['html:5'] = "<!DOCTYPE html>\n"
                    .."<html lang=\"en\">\n"
                    .."<head>\n"
                    .."\t<meta charset=\"UTF-8\">\n"
                    .."\t<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n"
                    .."\t<title></title>\n"
                    .."</head>\n"
                    .."<body>\n\n</body>\n"
                    .."</html>",
        },
    },
}

-- Ocaml shit
-- local opamshare = vim.fn.substitute(vim.fn.system('opam var share'), '\n$', '', '')
-- vim.cmd('set rtp+=' .. opamshare .. '/merlin/vim')
