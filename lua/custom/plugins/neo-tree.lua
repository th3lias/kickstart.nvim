return {
  'nvim-neo-tree/neo-tree.nvim',
  branch = 'v3.x', -- latest stable
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- optional, but recommended
    'MunifTanjim/nui.nvim',
  },
  config = function()
    vim.keymap.set('n', '<leader>e', '<cmd>Neotree toggle<CR>', { desc = 'Toggle Neo-tree' })
    vim.keymap.set('n', '<leader>o', '<cmd>Neotree reveal<CR>', { desc = 'Reveal current file in Neo-tree' })

    require('neo-tree').setup {
      close_if_last_window = true,
      popup_border_style = 'rounded',
      enable_git_status = true,
      enable_diagnostics = true,
      sort_case_insensitive = true,
      default_component_configs = {
        icon = {
          default = '󰈚',
          folder_empty_open = '󰜌',
          folder_closed = '',
          folder_open = '',
          folder_empty = '󰜌',
        },
        git_status = {
          symbols = {
            added = '✚',
            modified = '',
            deleted = '✖',
            renamed = '󰁕',
            untracked = '',
            ignored = '',
            unstaged = '󰄱',
            staged = '',
            conflict = '',
          },
        },
      },
      window = {
        position = 'left',
        width = 30,
        mappings = {
          ['<space>'] = 'toggle_node',
          ['<cr>'] = 'open',
          ['l'] = 'open',
          ['h'] = 'close_node',
          ['s'] = 'open_split',
          ['v'] = 'open_vsplit',
          ['t'] = 'open_tabnew',
          ['C'] = 'close_node',
          ['z'] = 'close_all_nodes',
          ['a'] = 'add',
          ['d'] = 'delete',
          ['r'] = 'rename',
          ['y'] = 'copy_to_clipboard',
          ['x'] = 'cut_to_clipboard',
          ['p'] = 'paste_from_clipboard',
          ['q'] = 'close_window',
          ['R'] = 'refresh',
        },
      },
      filesystem = {
        filtered_items = {
          visible = true,
          hide_dotfiles = false,
          hide_gitignored = false,
        },
        follow_current_file = {
          enabled = true,
        },
        use_libuv_file_watcher = true,
      },
      buffers = {
        follow_current_file = {
          enabled = true,
        },
        group_empty_dirs = true,
      },
      git_status = {
        window = {
          position = 'float',
        },
      },
    }
  end,
}
