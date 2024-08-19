return {
  {
    'catppuccin/nvim',
    name = 'catppuccin',
    priority = 1000,
    init = function()
      vim.cmd.colorscheme 'catppuccin-macchiato'
    end,
  },
  {
    'dgox16/devicon-colorscheme.nvim',
    dependencies = {
      'nvim-tree/nvim-web-devicons',
    },
    config = function()
      local macchiato = require('catppuccin.palettes').get_palette 'macchiato'

      require('devicon-colorscheme').setup {
        colors = {
          blue = macchiato.blue,
          cyan = macchiato.teal,
          green = macchiato.green,
          magenta = macchiato.pink,
          orange = macchiato.maroon,
          purple = macchiato.mauve,
          red = macchiato.red,
          white = macchiato.subtext0,
          yellow = macchiato.yellow,
          bright_blue = macchiato.blue,
          bright_cyan = macchiato.teal,
          bright_green = macchiato.green,
          bright_magenta = macchiato.pink,
          bright_orange = macchiato.maroon,
          bright_purple = macchiato.mauve,
          bright_red = macchiato.red,
          bright_yellow = macchiato.yellow,
        },
      }
    end,
  },
}
