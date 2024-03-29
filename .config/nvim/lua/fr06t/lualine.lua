require('lualine').setup{ 
	options={
		theme='dracula',
	},
	sections={
		lualine_a={'mode'},
		lualine_b={'branch', 'diff', 'diagnostics'},
		lualine_c={'filename'},
		lualine_x={'filetype'},
		lualine_y={},
		lualine_z={'location'},
	},
}
