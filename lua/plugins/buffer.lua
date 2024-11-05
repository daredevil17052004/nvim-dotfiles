-- In your lazy.nvim setup
return{
  'romgrk/barbar.nvim',
  dependencies = 'nvim-tree/nvim-web-devicons', -- Optional for icons
  config = function()
    require'bufferline'.setup {
      -- General options
      animation = false,                  
      auto_hide = false,                 
      tabpages = true,                   
      closable = true,                   
      clickable = true,
      gitsigns = {
      added = {enabled = true, icon = '+'},
      changed = {enabled = true, icon = '~'},
      deleted = {enabled = true, icon = '-'},
    },
    filetype = {
      -- Sets the icon's highlight group.
      -- If false, will use nvim-web-devicons colors
      custom_colors = false,

      -- Requires `nvim-web-devicons` if `true`
      enabled = true,
    },
    icons = {
        buffer_index = false,             
        buffer_number = false,           
        filetype = {
          enabled = true,                
          custom_colors = false,         
        },
        separator = { left = '<', right = '>' }, 
        modified = { button = ':)' },     
      },
      maximum_padding = 2,               
      maximum_length = 30,               
      no_name_title = 'No Name',         
    }
    vim.g.barbar_auto_setup = false -- Disable auto-setup
    -- Add your key mappings here
    vim.keymap.set('n', '<C-Tab>', '<Cmd>BufferNext<CR>', { silent = true })
    vim.keymap.set('n', '<C-S-Tab>', '<Cmd>BufferPrevious<CR>', { silent = true })
    vim.keymap.set('n', '<C-w>', '<Cmd>BufferClose<CR>', { silent = false })
    vim.keymap.set('n', '<C-S-w>', '<Cmd>BufferRestore<CR>', { silent = true })


    vim.api.nvim_set_hl(0, 'BufferCurrent', { fg = '#FFFFFF', bg = 'NONE' })   -- Current buffer
    vim.api.nvim_set_hl(0, 'BufferCurrentMod', { fg = '#FFD700', bg = 'NONE' }) -- Modified current buffer
    vim.api.nvim_set_hl(0, 'BufferInactive', { fg = '#A3BE8C', bg = 'NONE' })   -- Inactive buffers
    vim.api.nvim_set_hl(0, 'BufferVisible', { fg = '#D8DEE9', bg = 'NONE' })    -- Visible but not current buffers
    vim.api.nvim_set_hl(0, 'BufferTabpages', { fg = '#5F87FF', bg = 'NONE' })


  end
}

