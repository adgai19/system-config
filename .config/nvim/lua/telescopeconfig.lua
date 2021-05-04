local M = {}
require('telescope').setup {
    defaults = {file_ignore_patterns = {"build/"}},
    extensions = {
        fzy_native = {
            override_generic_sorter = false,
            override_file_sorter = true
        }
    },
    arecibo = {
        ["selected_engine"] = 'google',
        ["url_open_command"] = 'xdg-open',
        ["show_http_headers"] = false,
        ["show_domain_icons"] = false
    },
    frecency = {
        show_scores = false,
        show_unindexed = true,
        ignore_patterns = {"*.git/*", "*/tmp/*"},
        workspaces = {
            ["conf"] = "/home/adgai/.config",
            -- ["data"] = "/home/adgai/.local/share",
            ["project"] = "/home/adgai/projects"
        }
    }

}
require('telescope').load_extension('fzy_native')
require('telescope').load_extension("arecibo")
require('telescope').load_extension("frecency")
require'telescope'.load_extension("cheat")
require'telescope'.load_extension('project')
require('telescope').load_extension('dap')
require('dap-python').setup('~/anaconda3/bin/python')

M.search_dotfiles = function()
    require("telescope.builtin").find_files(
        {
            prompt_title = "< VimRC >",
            cwd = "~/.config/nvim/",
            file_ignore_patterns = {"autoload/"}
        })
end

-- M.git_branch_switcher = function ()
-- require("telescope.builtin").

-- end
return M
