require("dashboard").setup({
	theme = "doom",
	config = {
		header = {
			"",
			"",
			"",
			"",
			"",
			" ███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗",
			" ████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║",
			" ██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║",
			" ██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║",
			" ██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║",
			" ╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝",
			"",
			"",
			"",
			"",
			"",
		},
		center = {
			{ action = "Telescope find_files", desc = " Find file", icon = " ", key = "f" },
			{ action = "ene | startinsert", desc = " New file", icon = " ", key = "n" },
			{ action = "Telescope oldfiles", desc = " Recent files", icon = " ", key = "r" },
			{ action = "Telescope live_grep", desc = " Find text", icon = " ", key = "g" },
			{
				action = "Neotree ~/.config/nvim/",
				desc = " Config",
				icon = " ",
				key = "c",
			},
			{
				action = 'lua require("persistence").load()',
				desc = " Restore Session",
				icon = " ",
				key = "s",
			},
			{ action = "Lazy", desc = " Lazy", icon = "󰒲 ", key = "l" },
			{ action = "qa", desc = " Quit", icon = " ", key = "q" },
		},
		footer = function()
			local stats = require("lazy").stats()
			local ms = (math.floor(stats.startuptime * 100 + 0.5) / 100)
			return { "⚡ Neovim loaded " .. stats.loaded .. "/" .. stats.count .. " plugins in " .. ms .. "ms" }
		end,
	},
})
