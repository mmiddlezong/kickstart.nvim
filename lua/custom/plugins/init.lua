-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
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
  },
  'ThePrimeagen/vim-be-good',
  {
    'lervag/vimtex',
    init = function()
      vim.g.vimtex_view_method = 'skim'
      -- vim.api.nvim_create_autocmd('FileType', {
      --   pattern = 'tex',
      --   callback = function()
      --     vim.opt_local.conceallevel = 2
      --   end,
      -- })
      vim.g.vimtex_matchparen_enabled = false
      -- vim.g.matchup_override_vimtex = true
      -- vim.g.matchup_matchparen_deferred = true
      -- Set the Conceal highlight color
      -- vim.api.nvim_set_hl(0, 'Conceal', { fg = '#b5d3e6' })
    end,
  },
  -- {
  --   'andymass/vim-matchup',
  --   config = function()
  --     vim.g.matchup_matchparen_offscreen = { method = 'popup' }
  --   end,
  -- },
}
