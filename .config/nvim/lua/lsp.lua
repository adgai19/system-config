local has_lsp, nvim_lsp = pcall(require, 'nvim_lsp')
local has_completion, completion = pcall(require, 'completion')
local has_diagnostic, diagnostic = pcall(require, 'diagnostic')

if not has_lsp then return end

-- for debugging
-- :lua print(vim.inspect(vim.lsp.buf_get_clients()))

-- highlights
vim.fn.sign_define('LspDiagnosticsErrorSign', {
    text = '✖ ' or 'E',
    texthl = 'LspDiagnosticsError',
    linehl = '',
    numhl = ''
})
vim.fn.sign_define('LspDiagnosticsWarningSign', {
    text = '⚠' or 'W',
    texthl = 'LspDiagnosticsWarning',
    linehl = '',
    numhl = ''
})
vim.fn.sign_define('LspDiagnosticsInformationSign', {
    text = 'ℹ' or 'I',
    texthl = 'LspDiagnosticsInformation',
    linehl = '',
    numhl = ''
})
vim.fn.sign_define('LspDiagnosticsHintSign', {
    text = '➤' or 'H',
    texthl = 'LspDiagnosticsHint',
    linehl = '',
    numhl = ''
})

vim.api.nvim_command('highlight! link LspDiagnosticsError DiffDelete')
vim.api.nvim_command('highlight! link LspDiagnosticsWarning DiffChange')
vim.api.nvim_command('highlight! link LspDiagnosticsHint NonText')

vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

local on_attach = function(client, bufnr)
    local resolved_capabilities = client.resolved_capabilities

    if has_diagnostic then diagnostic.on_attach() end

    if has_completion then completion.on_attach() end

    -- Mappings.
    local opts = {noremap = true, silent = true}
    vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gD',
                                '<Cmd>lua vim.lsp.buf.declaration()<CR>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gd',
                                '<Cmd>lua vim.lsp.buf.definition()<CR>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', 'ga',
                                '<Cmd>lua vim.lsp.buf.code_action()<CR>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', 'K',
                                '<Cmd>lua vim.lsp.buf.hover()<CR>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gi',
                                '<cmd>lua vim.lsp.buf.implementation()<CR>',
                                opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>r',
                                '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gr',
                                '<cmd>lua vim.lsp.buf.references()<CR>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>ld',
                                '<cmd>lua vim.lsp.util.show_line_diagnostics()<CR>',
                                opts)

    if resolved_capabilities.document_highlight then
        vim.api
            .nvim_command [[autocmd CursorHold  <buffer> lua vim.lsp.buf.document_highlight()]]
        vim.api
            .nvim_command [[autocmd CursorHoldI <buffer> lua vim.lsp.buf.document_highlight()]]
        vim.api
            .nvim_command [[autocmd CursorMoved <buffer> lua vim.lsp.util.buf_clear_references()]]
    end
end
-- lsp install
--
local function setup_servers()
    require'lspinstall'.setup()
    local servers = require'lspinstall'.installed_servers()
    for _, server in pairs(servers) do require'lspconfig'[server].setup {} end
end

setup_servers()

-- Automatically reload after `:LspInstall <server>` so we don't have to restart neovim
require'lspinstall'.post_install_hook = function()
    setup_servers() -- reload installed servers
    vim.cmd("bufdo e") -- this triggers the FileType autocmd that starts the server
end
require'lspconfig'.jedi_language_server.setup {}
require'lspconfig'.gopls.setup {}
require'lspconfig'.texlab.setup {
    cmd = {"texlab"},
    filetypes = {"tex", "bib"},

    settings = {
        texlab = {
            auxDirectory = ".",
            bibtexFormatter = "texlab",
            build = {
                args = {"-pdf", "-interaction=nonstopmode", "-synctex=1", "%f"},
                executable = "latexmk",
                forwardSearchAfter = false,
                onSave = false
            },
            chktex = {onEdit = false, onOpenAndSave = false},
            diagnosticsDelay = 300,
            formatterLineLength = 80,
            forwardSearch = {args = {}},
            latexFormatter = "latexindent",
            latexindent = {modifyLineBreaks = false}
        }
    }
}

require'lspconfig'.pylsp.setup {}
require'lspconfig'.pyright.setup {}
