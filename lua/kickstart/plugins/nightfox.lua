return {
  { -- You can easily change to a different colorscheme.
    -- Change the name of the colorscheme plugin below, and then
    -- change the command in the config to whatever the name of that colorscheme is.
    --
    -- If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`.
    'EdenEast/nightfox.nvim',
    priority = 1000, -- Make sure to load this before all the other start plugins.
    config = function()
      ---@diagnostic disable-next-line: missing-fields
      require('nightfox').setup {
        styles = {
          comments = { italic = false }, -- Disable italics in comments
        },
      }

      -- Load the colorscheme here.
      -- Like many other themes, this one has different styles, and you could load
      -- any other, such as 'carbonfox', 'terafox', or 'nordfox'.
      vim.cmd.colorscheme 'carbonfox'
      vim.cmd 'hi Visual guibg=#08BDBA guifg=#FFFFFF'
    end,
  },
}
-- vim: ts=2 sts=2 sw=2 et
