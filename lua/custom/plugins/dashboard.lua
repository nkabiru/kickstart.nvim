return {
  'nvimdev/dashboard-nvim',
  event = 'VimEnter',
  config = function()
    require('dashboard').setup {
      theme = 'hyper',
      config = {
        shortcut = {
          {
            desc = 'Config',
            key = 'c',
            action = 'Telescope find_files cwd=' .. vim.fn.stdpath 'config',
          },
        },
        week_header = {
          enable = true,
        },
        packages = { enable = false },
        project = { enable = true, limit = 5 },
        mru = { enable = true, limit = 5 },
      },
    }
  end,
  dependencies = {
    { 'nvim-tree/nvim-web-devicons' },
  },
}
