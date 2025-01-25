--- @type LazyPluginSpec
return {
  'tpope/vim-fugitive',
  config = function()
    vim.keymap.set('n', '<leader>gs', '<cmd>topleft Git<CR>', { silent = true, desc = '[G]it [S]tatus' })
    vim.keymap.set('n', '<leader>gh', '<cmd>diffget //2<CR>', { silent = true, desc = '[G]it select left([H]) diff' })
    vim.keymap.set('n', '<leader>gl', '<cmd>diffget //3<CR>', { silent = true, desc = '[G]it select right([L]) diff' })
  end
}
