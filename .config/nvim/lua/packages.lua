local present, packer = pcall(require, "plugins.packerInit")

if not present then
	return false
end

local use = packer.use
return packer.startup(function()
	use("lewis6991/impatient.nvim")
	use({
		"wbthomason/packer.nvim",
	})

	-- tmux helpers
	use("christoomey/vim-tmux-navigator")
	use("tmux-plugins/vim-tmux")
	use("preservim/vimux")

	-- helpers
	use("nvim-lua/plenary.nvim")
	use("nvim-lua/popup.nvim")
	-- use("haringsrob/nvim_context_vt")
	use("https://github.com/airblade/vim-rooter")

	-- completion
	use({ "rafamadriz/friendly-snippets" })
	use({ "hrsh7th/nvim-cmp" })
	use({ "tzachar/cmp-tabnine", run = "./install.sh", requires = "hrsh7th/nvim-cmp" })
	use({ "L3MON4D3/LuaSnip", wants = "friendly-snippets", after = "nvim-cmp" })
	use({ "saadparwaiz1/cmp_luasnip", after = "LuaSnip" })
	use("hrsh7th/cmp-cmdline")
	use({ "hrsh7th/cmp-nvim-lua" })
	use({ "hrsh7th/cmp-nvim-lsp" })
	use({ "hrsh7th/cmp-buffer", after = "cmp-nvim-lsp" })
	use({ "hrsh7th/cmp-path", after = "cmp-buffer" })
	use({ "mlaursen/vim-react-snippets", after = "cmp-path" })
	use("onsails/lspkind-nvim")
	use("glepnir/lspsaga.nvim")
	-- use("hrsh7th/cmp-nvim-lsp-signature-help")

	-- telescope
	use("nvim-telescope/telescope.nvim")
	use({ "nvim-telescope/telescope-fzf-native.nvim", run = "make" })
	use("nvim-telescope/telescope-project.nvim")
	use({
		"nvim-telescope/telescope-frecency.nvim",
		requires = { "tami5/sqlite.lua" },
	})
	use("nvim-telescope/telescope-dap.nvim")
	use({ "nvim-telescope/telescope-ui-select.nvim" })
	-- use({ "nvim-telescope/telescope-file-browser.nvim" })

	-- folke stuff
	use({
		"folke/todo-comments.nvim",
		requires = "nvim-lua/plenary.nvim",
		config = function()
			require("todo-comments").setup({})
		end,
	})

	use("folke/lsp-colors.nvim")
	-- use({
	-- 	"folke/which-key.nvim",
	-- 	config = function()
	-- 		require("which-key").setup({})
	-- 	end,
	-- })
	use({
		"folke/tokyonight.nvim",
		config = function()
			-- code
			vim.g.tokyonight_style = "night"
			vim.g.tokyonight_italic_functions = true
			vim.g.tokyonight_sidebars = { "qf", "vista_kind", "terminal", "packer" }
			vim.cmd([[colorscheme tokyonight]])
			vim.cmd([[
hi Normal guibg=NONE ctermbg=NONE
]])
		end,
	})
	use({
		"folke/trouble.nvim",
		requires = "kyazdani42/nvim-web-devicons",
		config = function()
			require("trouble").setup({})
		end,
	})
	use("folke/lsp-trouble.nvim")
	use({ "folke/lua-dev.nvim" })

	--lsp
	-- use("jose-elias-alvarez/nvim-lsp-ts-utils")
	use("folke/nvim-lsp-ts-utils")
	use({ "ray-x/lsp_signature.nvim" })
	use("neovim/nvim-lspconfig")
	use({ "mfussenegger/nvim-jdtls", requires = "mfussenegger/nvim-fzy" })
	use("kshenoy/vim-signature")
	use({ "tjdevries/nlua.nvim", config = function() end })
	use("RishabhRD/popfix")
	use("RishabhRD/nvim-lsputils")
	use("simrat39/rust-tools.nvim")
	use({
		"simrat39/symbols-outline.nvim",
		config = function()
			local opts = {
				highlight_hovered_item = true,
				show_guides = true,
			}
			require("symbols-outline").setup(opts)
		end,
	})

	--tpope
	use("tpope/vim-eunuch")
	use("tpope/vim-surround")
	use("tpope/vim-fugitive")
	use("tpope/vim-scriptease")
	use("tpope/vim-commentary")
	use("JoosepAlviste/nvim-ts-context-commentstring")
	--dap
	--TODO need to set this up
	use("mfussenegger/nvim-dap")
	use("mfussenegger/nvim-dap-python")

	--treesitter
	use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })
	use({ "nvim-treesitter/playground", opt = true })

	-- ThePrimeagen plugins
	use("ThePrimeagen/harpoon")
	use("ThePrimeagen/git-worktree.nvim")
	use({
		"ThePrimeagen/refactoring.nvim",
		requires = {
			{ "nvim-lua/plenary.nvim" },
			{ "nvim-treesitter/nvim-treesitter" },
		},
	})

	--other helpers
	use("junegunn/rainbow_parentheses.vim")
	use("sbdchd/neoformat")
	use("mhinz/vim-startify")
	use({ "hoob3rt/lualine.nvim", requires = { "kyazdani42/nvim-web-devicons", opt = true } })
	use({
		"rcarriga/nvim-notify",
		config = function()
			require("notify").setup({

				background_colour = "#000000",
			})
			vim.notify = require("notify")
		end,
	})
	use({
		"windwp/nvim-autopairs",
		config = function()
			require("nvim-autopairs").setup({})
		end,
	})
	use("mbbill/undotree")
	use("ggandor/lightspeed.nvim")
	use({ "tjdevries/cyclist.vim" })
	use("jeffkreeftmeijer/vim-numbertoggle")
	use({ "sindrets/diffview.nvim", requires = "nvim-lua/plenary.nvim" })
	use("nacro90/numb.nvim")
	use("jose-elias-alvarez/null-ls.nvim")
	use({ "norcalli/nvim-colorizer.lua", config = require("colorizer").setup() })
	-- use({
	-- 	"weilbith/nvim-code-action-menu",
	-- 	config = function()
	-- 		require("tools.utils").nnoremap(
	-- 			"<leader>ct",
	-- 			"<esc>:lua require('code_action_menu').open_code_action_menu()<cr>"
	-- 		)
	-- 	end,
	-- })
	-- use {'stevearc/dressing.nvim'}
	use({ "potatoesmaster/i3-vim-syntax" })
	use({
		"lewis6991/gitsigns.nvim",
		requires = {
			"nvim-lua/plenary.nvim",
		},
		config = function()
			require("gitsigns").setup()
		end,
	})
	use({ "windwp/nvim-ts-autotag", config = require("nvim-ts-autotag").setup() })
end)
