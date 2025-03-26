-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    'luckasRanarison/tailwind-tools.nvim',
    dependencies = { 'nvim-treesitter/nvim-treesitter' },
    opts = {}, -- your configuration
  },
  {
    'MeanderingProgrammer/render-markdown.nvim',
    opts = {},
    dependencies = {
      'nvim-treesitter/nvim-treesitter',
      'echasnovski/mini.nvim',
      'nvim-tree/nvim-web-devicons',
    },
  },
  {
    'epwalsh/obsidian.nvim',
    version = '*', -- recommended, use latest release instead of latest commit
    lazy = true,
    ft = 'markdown',
    -- Replace the above line with this if you only want to load obsidian.nvim for markdown files in your vault:
    -- event = {
    --   -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
    --   -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/*.md"
    --   -- refer to `:h file-pattern` for more examples
    --   "BufReadPre path/to/my-vault/*.md",
    --   "BufNewFile path/to/my-vault/*.md",
    -- },
    dependencies = {
      'nvim-lua/plenary.nvim',
      'hrsh7th/nvim-cmp',
      'nvim-telescope/telescope.nvim',
      'epwalsh/pomo.nvim',
    },
    opts = {
      ui = { enable = false },
      workspaces = {
        {
          name = 'personal',
          path = '~/vaults/personal',
        },
        {
          name = 'work',
          path = '~/vaults/work',
        },
      },
    },
  },
  {
    'epwalsh/pomo.nvim',
    version = '*', -- Recommended, use latest release instead of latest commit
    lazy = true,
    cmd = { 'TimerStart', 'TimerRepeat', 'TimerSession' },
    dependencies = {
      -- Optional, but highly recommended if you want to use the "Default" timer
      'rcarriga/nvim-notify',
    },
    keys = {
      { '<leader>pf', '<cmd>TimerSession focus<cr>', desc = '[P]omodoro [F]ocus' },
      { '<leader>ps', '<cmd>TimerShow<cr>', desc = '[P]omodoro [S]how' },
      { '<leader>ph', '<cmd>TimerHide<cr>', desc = '[P]omodoro [H]ide' },
      { '<leader>pp', '<cmd>TimerPause<cr>', desc = '[P]omodoro [P]ause' },
      { '<leader>pr', '<cmd>TimerResume<cr>', desc = '[P]omodoro [R]esume' },
      { '<leader>pe', '<cmd>TimerStop<cr>', desc = '[P]omodoro [E]nd' },
    },

    opts = {
      sessions = {
        focus = {
          { name = 'Work', duration = '25m' },
          { name = 'Short Break', duration = '5m' },
          { name = 'Work', duration = '25m' },
          { name = 'Short Break', duration = '5m' },
          { name = 'Work', duration = '25m' },
          { name = 'Long Break', duration = '15m' },
        },
      },
    },
  },
  {
    'mikavilpas/yazi.nvim',
    event = 'VeryLazy',
    keys = {
      {
        '<leader>-',
        '<cmd>Yazi<cr>',
        desc = 'Open yazi at the current file',
      },
      {
        '<leader>cw',
        '<cmd>Yazi cwd<cr>',
        desc = "Open the file manager in nvim's working directory",
      },
    },
    opts = {
      open_for_directories = false,
      floating_window_scaling_factor = 0.8,
      highlight_groups = {
        hovered_buffer = { link = 'NormalFloat' },
        hovered_buffer_in_same_directory = { link = 'NormalFloat' },
      },
      keymaps = {
        show_help = '<f1>',
      },
    },
  },
}
