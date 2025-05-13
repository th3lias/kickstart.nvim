return {
  -- VimTeX for LaTeX editing
  {
    'lervag/vimtex',
    ft = { 'tex' },
    init = function()
      -- Optional: configure VimTeX here
      vim.g.vimtex_view_method = 'skim' -- or 'skim' on Mac, or leave unset
      vim.g.vimtex_quickfix_mode = 0
    end,
  },
}