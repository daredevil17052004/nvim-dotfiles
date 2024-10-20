return {
  'akinsho/toggleterm.nvim', 
  version = "*",
  config = function()
    require("toggleterm").setup({
      open_mapping = [[<c-`>]],  -- Define a mapping to open the terminal
      direction = 'horizontal',        -- Options: float, vertical, horizontal, tab
      shade_filetypes = {},
      shade_terminal = false,
      start_in_insert = true,
      insert_mappings = true,     -- Use insert mappings for normal mode
      terminal_mappings = true,
    })
  end
}

