return {
  'jose-elias-alvarez/null-ls.nvim',
  config = function()
    local null_ls = require 'null-ls'

    null_ls.setup {
      sources = {
        -- Configure Ruff for diagnostics (linting)
        null_ls.builtins.diagnostics.ruff.with {
          command = 'ruff', -- Path to Ruff executable
          args = { '--fix', '-' }, -- Optionally auto-fix
        },

        -- Optional: Use black for formatting
        null_ls.builtins.formatting.black.with {
          extra_args = { '--line-length', '88' },
        },
      },
    }
  end,
}
