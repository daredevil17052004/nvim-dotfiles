return{
        'sainnhe/everforest',
      lazy = false,
      priority = 1000,
      config = function()
        -- Optionally configure and load the colorscheme
        -- directly inside the plugin declaration.
        vim.g.everforest_enable_italic = true
        vim.g.everforest_background = 'soft'  -- Set background to soft
        vim.g.everforest_transparent_background = 1  -- Enable transparent background
        vim.opt.background = "dark" 
        vim.cmd.colorscheme("everforest")
      end
}
