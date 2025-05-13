return {
  'akinsho/toggleterm.nvim',
  version = '*',
  config = function()
    require('toggleterm').setup {
      size = 20,
      open_mapping = [[<leader>tt]], -- Toggle with <leader>tt
      direction = 'float', -- or 'horizontal' / 'vertical'
      shade_terminals = true,
      start_in_insert = true,
      insert_mappings = true,
      persist_size = true,
    }
  end,
}
