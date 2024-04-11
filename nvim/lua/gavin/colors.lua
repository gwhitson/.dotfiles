function setColors(color)
	color = color or "tokyonight-night"
	-- color = color or "rose-pine"
	vim.cmd.colorscheme(color)

    vim.api.nvim_set_hl(0, "Normal", {bg = "#111117"})
    vim.api.nvim_set_hl(0, "NormalFloat", {bg = "#111117"})
end

setColors()
