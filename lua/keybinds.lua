local key_mapper = function(mode, key, result)
vim.api.nvim_set_keymap(
    mode,
    key,
    result,
    {noremap = true, silent = true}
  )
end

key_mapper('', '<up>', '<nop>')
key_mapper('', '<down>', '<nop>')
key_mapper('', '<left>', '<nop>')
key_mapper('', '<right>', '<nop>')
key_mapper('', 'Q', '<nop>')
key_mapper('i', 'jk', '<ESC>')
key_mapper('i', 'kj', '<ESC>')
key_mapper('v', 'jk', '<ESC>')
key_mapper('v', 'kj', '<ESC>')


key_mapper('n', '<C-p>', ':lua require"telescope.builtin".find_files()<CR>')
key_mapper('n', '<leader>ts', ':lua require"telescope.builtin".git_files()<CR>')
key_mapper('n', '<leader>fs', ':lua require"telescope.builtin".live_grep()<CR>')
key_mapper('n', '<leader>fh', ':lua require"telescope.builtin".help_tags()<CR>')
key_mapper('n', '<leader>fb', ':lua require"telescope.builtin".buffers()<CR>')

key_mapper('n', '<leader>tf', ':lua require"telescope".extensions.file_browser.file_browser()<CR>')
key_mapper('n', '<leader>tg', ':lua require"telescope".extensions.file_browser.file_browser({ path = "%:p:h" })<CR>')


key_mapper('n', 'gd', ':lua vim.lsp.buf.definition()<CR>')
key_mapper('n', 'gD', ':lua vim.lsp.buf.declaration()<CR>')
key_mapper('n', 'gi', ':lua vim.lsp.buf.implementation()<CR>')
key_mapper('n', 'gw', ':lua vim.lsp.buf.document_symbol()<CR>')
key_mapper('n', 'gW', ':lua vim.lsp.buf.workspace_symbol()<CR>')
key_mapper('n', 'gr', ':lua vim.lsp.buf.references()<CR>')
key_mapper('n', 'gt', ':lua vim.lsp.buf.type_definition()<CR>')
key_mapper('n', 'K', ':lua vim.lsp.buf.hover()<CR>')
key_mapper('n', '<c-k>', ':lua vim.lsp.buf.signature_help()<CR>')
key_mapper('n', '<leader>af', ':lua vim.lsp.buf.code_action()<CR>')
key_mapper('n', '<leader>fe', ':lua vim.diagnostic.open_float()<CR>')
key_mapper('n', '<leader>rn', ':lua vim.lsp.buf.rename()<CR>')

key_mapper('n', '<leader>s', ':w<CR>')
key_mapper('n', '<leader>c', ':noh<CR>')

-- harpoon
key_mapper('n', '<leader>hf', ':lua require("harpoon.mark").add_file()<CR>')
key_mapper('n', '<leader>hl', ':lua require("harpoon.ui").toggle_quick_menu()<CR>')
key_mapper('n', '<leader>hj', ':lua require("harpoon.ui").nav_next()<CR>')
key_mapper('n', '<leader>hk', ':lua require("harpoon.ui").nav_prev()<CR>')
key_mapper('n', '<leader>h1', ':lua require("harpoon.ui").nav_file(1)<CR>')
key_mapper('n', '<leader>h2', ':lua require("harpoon.ui").nav_file(2)<CR>')
key_mapper('n', '<leader>h2', ':lua require("harpoon.ui").nav_file(2)<CR>')
key_mapper('n', '<leader>h3', ':lua require("harpoon.ui").nav_file(3)<CR>')
key_mapper('n', '<leader>h4', ':lua require("harpoon.ui").nav_file(4)<CR>')
key_mapper('n', '<leader>h5', ':lua require("harpoon.ui").nav_file(5)<CR>')
key_mapper('n', '<leader>h6', ':lua require("harpoon.ui").nav_file(6)<CR>')
key_mapper('n', '<leader>h7', ':lua require("harpoon.ui").nav_file(7)<CR>')


-- yoinked from ThePrimeagen
key_mapper('v', 'J', ":m '>+1<CR>gv=gv")
key_mapper('v', 'K', ":m '<-2<CR>gv=gv")
key_mapper('n', 'J', "mzJ`z")
key_mapper('n', '<C-d>', "<C-d>zz")
key_mapper('n', '<C-u>', "<C-u>zz")
key_mapper('n', 'J', "mzJ`z")
key_mapper('n', 'n', "nzzzv")
key_mapper('n', 'N', "Nzzzv")

key_mapper('n', 'QN', ':cn<CR>zz')
key_mapper('n', 'QP', ':cp<CR>zz')

