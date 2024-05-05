return {
  'lervag/vimtex',
  init = function()
    vim.g.vimtex_view_method = 'skim'
    vim.api.nvim_create_autocmd('FileType', {
      pattern = 'tex',
      callback = function()
        -- vim.opt_local.conceallevel = 2
      end,
    })
    -- Set the Conceal highlight color
    -- vim.api.nvim_set_hl(0, 'Conceal', { fg = '#b5d3e6' })
  end,
}
