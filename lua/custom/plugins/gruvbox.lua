return {
  {
    'ellisonleao/gruvbox.nvim',
    priority = 1000,
    config = function() end,
    init = function()
      vim.cmd.colorscheme 'gruvbox'
    end,
  },
  {
    'dgox16/devicon-colorscheme.nvim',
    dependencies = {
      'nvim-tree/nvim-web-devicons',
    },
    config = function()
      local gruvbox = require('gruvbox').palette

      require('devicon-colorscheme').setup {
        colors = {
          blue = gruvbox.neutral_blue,
          cyan = gruvbox.neutral_aqua,
          green = gruvbox.neutral_green,
          magenta = gruvbox.neutral_purple,
          orange = gruvbox.neutral_orange,
          purple = gruvbox.neutral_purple,
          red = gruvbox.neutral_red,
          white = gruvbox.light3,
          yellow = gruvbox.bright_yellow,
          bright_blue = gruvbox.bright_blue,
          bright_cyan = gruvbox.bright_aqua,
          bright_green = gruvbox.bright_green,
          bright_magenta = gruvbox.bright_purple,
          bright_orange = gruvbox.bright_orange,
          bright_purple = gruvbox.bright_purple,
          bright_red = gruvbox.bright_red,
          bright_yellow = gruvbox.bright_yellow,
        },
      }
    end,
  },
}
