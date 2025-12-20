return {
	{
		"folke/which-key.nvim",
		event = "VimEnter",
		opts = { delay = 0 },
	},
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
		config = function()
			require("catppuccin").setup({
				flavour = "mocha",
				integrations = {
					treesitter = true,
				},
			})
			vim.cmd.colorscheme("catppuccin")
		end,
	},
	{
		"folke/todo-comments.nvim",
		event = "VimEnter",
		dependencies = { "nvim-lua/plenary.nvim" },
		opts = { signs = false },
	},
	{
		"echasnovski/mini.nvim",
		config = function()
			require("mini.ai").setup({ n_lines = 500 })
			require("mini.surround").setup()
			require("mini.statusline").setup({ use_icons = vim.g.have_nerd_font })
		end,
	},
}
