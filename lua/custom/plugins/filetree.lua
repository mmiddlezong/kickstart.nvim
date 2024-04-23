return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  config = function()
    require('neo-tree').setup {}
    vim.keymap.set('n', '<leader>E', '<Cmd>Neotree toggle reveal_force_cwd<CR>', { desc = 'Toggle file [E]xplorer' })
  end,
}
