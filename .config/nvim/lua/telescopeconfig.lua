local M = {}
require('telescope').setup {
    defaults = {
        -- layout_strategy = "horizontal",
        -- p
        vimgrep_arguments = {
            'rg', '--color=never', '--no-heading', '--with-filename',
            '--line-number', '--column', '--smart-case'
        },
        file_ignore_patterns = {"build/", "bin/"},
        prompt_position = "bottom",
        prompt_prefix = ">",
        selection_strategy = "reset",
        sorting_strategy = "descending",
        layout_strategy = "horizontal",
        layout_defaults = {},
        shorten_path = true,
        winblend = 0,
        width = 0.75,
        preview_cutoff = 120,
        results_height = 1,
        results_width = 0.8,
        border = {},
        borderchars = {'─', '│', '─', '│', '╭', '╮', '╯', '╰'},
        color_devicons = true,
        use_less = true
    },
    extensions = {
        fzy_native = {
            override_generic_sorter = true,
            override_file_sorter = true
        },
        -- arecibo = {
        -- ["selected_engine"] = 'google',
        -- ["url_open_command"] = 'xdg-open',
        -- ["show_http_headers"] = false,
        -- ["show_domain_icons"] = false
        -- },
        frecency = {
            show_scores = false,
            show_unindexed = true,
            ignore_patterns = {"*.git/*", "*/tmp/*"},
            workspaces = {
                ["conf"] = "/home/adgai/.config",
                -- ["data"] = "/home/adgai/.local/share",
                ["project"] = "/home/adgai/projects"
            }

        },
        fzf = {
            fuzzy = true, -- false will only do exact matching
            override_generic_sorter = false, -- override the generic sorter
            override_file_sorter = true, -- override the file sorter
            case_mode = "smart_case" -- or "ignore_case" or "respect_case"
            -- the default case_mode is "smart_case"
        }

    }
}
require('telescope').load_extension('fzf')
-- require('telescope').load_extension("arecibo")
require('telescope').load_extension("frecency")
require'telescope'.load_extension("cheat")
require'telescope'.load_extension('project')
require('telescope').load_extension('coc')
require'telescope'.load_extension('zoxide')
require('telescope').load_extension('dap')
require('telescope').load_extension('tmux')
require('dap-python').setup('~/anaconda3/bin/python')

M.search_dotfiles = function()
    require("telescope.builtin").find_files(
        {
            prompt_title = "< VimRC >",
            cwd = "~/.config/nvim/",
            file_ignore_patterns = {"autoload/"}
        })
end

M.find_word = function()
    local word = vim.fn.input('enter word to search > ')
    require('telescope.builtin').grep_string(
        require('telescope.themes').get_ivy({search = word}))

end
M.file_browser = function()
    require("telescope.builtin").file_browser(
        require("telescope.themes").get_dropdown({previewer = false}))

end

return M
