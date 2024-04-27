local wk = require("which-key")
wk.register({
	w = "Write file",
	q = "Quit file",
	d = "Discard changes",
	e = "Toggle explorer",
	r = "Refresh lua files",
	l = "Open lazy",
	v = "Vertical split",
	h = "Horizontal split",
	f = {
		name = "Find",
		f = "Files",
		g = "Live grep",
		b = "Buffers",
		h = "Help tags",
	},
	g = {
		name = "Git",
		b = "Toggle line blame",
		g = "Lazygit",
	},
	b = {
		name = "Buffer",
		l = "Close all buffers to the left",
		r = "Close all buffers to the right",
		o = "Close other buffers",
		p = "Pick buffer to open",
		c = "Pick buffer to close",
	},
	t = "Open terminal",
}, { prefix = "<leader>" })

wk.register({
	["<C-h>"] = "Go to left window",
	["<C-j>"] = "Go to down window",
	["<C-k>"] = "Go to up window",
	["<C-l>"] = "Go to right window",
	["<Tab>"] = "Go to next buffer",
	["<S-Tab>"] = "Go to previous buffer",
	["<left>"] = "Go to previous tab",
	["<right>"] = "Go to next tab",
	["<up>"] = "Create new tab",
	["<down>"] = "Close current tab",
})
