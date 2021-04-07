local M = {}
require('telescope').setup {
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
    }

}
require('telescope').load_extension('fzy_native')
require('telescope').load_extension("arecibo")

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
