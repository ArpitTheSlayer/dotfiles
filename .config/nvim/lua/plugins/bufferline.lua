require("bufferline").setup({
	options = {
		separator_style = "thin",
		diagnostics = "nvim_lsp",
		diagnostics_update_in_insert = false,
		diagnostics_indicator = function(_, _, diagnostics_dict)
			local s = " "
			for e, n in pairs(diagnostics_dict) do
				local sym = e == "error" and " " or (e == "warning" and " " or "")
				s = s .. n .. sym
			end
			return s
		end,
	},
})

local key = vim.keymap.set

key("n", "<Tab>", vim.cmd.BufferLineCycleNext)
key("n", "<S-Tab>", vim.cmd.BufferLineCyclePrev)
key("n", "<leader>bl", vim.cmd.BufferLineCloseLeft)
key("n", "<leader>br", vim.cmd.BufferLineCloseRight)
key("n", "<leader>bo", vim.cmd.BufferLineCloseOthers)
key("n", "<leader>bp", vim.cmd.BufferLinePick)
key("n", "<leader>bc", vim.cmd.BufferLinePickClose)
