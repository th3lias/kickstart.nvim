return {
  'nvimdev/dashboard-nvim',
  event = 'VimEnter',
  config = function()
    require('dashboard').setup {
      theme = 'doom',
      config = {
        -- Header "nvm"
        header = {
        '███╗   ██╗██╗   ██╗███╗   ███╗',
        '████╗  ██║██║   ██║████╗ ████║',
        '██╔██╗ ██║██║   ██║██╔████╔██║',
        '██║╚██╗██║╚██╗ ██╔╝██║╚██╔╝██║',
        '██║ ╚████║ ╚████╔╝ ██║ ╚═╝ ██║',
        '╚═╝  ╚═══╝  ╚═══╝  ╚═╝     ╚═╝',
        },
        center = true,
        -- Center "nvim"
        center = {
          { icon = '  ',
            desc = 'Recently opened files                   ',
            action = 'Telescope oldfiles',
            shortcut = 'SPC f h',
          },
          { icon = '  ',
            desc = 'Find file                               ',
            action = 'Telescope find_files',
            shortcut = 'SPC f f',
          },
          { icon = '  ',
            desc = 'Open personal config                     ',
            action = 'e ~/.config/nvim/init.lua',
            shortcut = 'SPC f c',
          },
        },
      },
    }
  end,
  dependencies = { 'nvim-tree/nvim-web-devicons' },
}