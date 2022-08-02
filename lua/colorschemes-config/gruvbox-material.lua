vim.o.background = "dark" -- or light if you so prefer

require("gruvqueen").setup({
    config = {
        disable_bold = false,
        italic_comments = true,
        italic_keywords = true,
        italic_functions = false,
        italic_variables = true,
        invert_selection = true,
        style = 'material', -- possible values: 'original', 'mix', 'material'
        transparent_background = false,
       --  bg_color = "black",
    },
})
