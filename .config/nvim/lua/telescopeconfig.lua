require('telescope').load_extension('fzy_native')
local M = {}
require('telescope').setup {
    extensions = {
        fzy_native = {
            override_generic_sorter = false,
            override_file_sorter = true,
        }
    }
}
M.search_dotfiles = function() 
    require("telescope.builtin").find_files({
        prompt_title = "< VimRC >",
        cwd = "~/.config/nvim/",
 file_ignore_patterns = { "autoload/" } 
    })
end

return M
