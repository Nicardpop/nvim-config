require('tokyonight').setup({
style = "night", -- Choose "storm", "night", or "moon"
transparent = true, -- Enable transparency if desired
terminal_colors = true, -- Apply colors to the terminal
styles = {
    comments = { italic = true },
    keywords = { italic = false },
    functions = { bold = true },
    variables = {},
    sidebars = "transparent",
    floats = "transparent",
},
})


function ColorMyPencils(color)

	color = color or "tokyonight"
	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "Normal" , {bg = "none"})
	vim.api.nvim_set_hl(0, "NormalFloat" , {bg = "none"})



end
ColorMyPencils()
