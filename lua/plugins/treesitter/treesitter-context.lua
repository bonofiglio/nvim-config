--- @type LazyPluginSpec
return {
  'nvim-treesitter/nvim-treesitter-context',
  opts = {
    max_lines = 3,
    min_window_height = 0,
    line_numbers = true,
    multiline_threshold = 1,
    trim_scope = "outer",
    mode = "cursor",
    separator = nil,
    zindex = 20,
    on_attach = nil,
  },
  event = 'VimEnter',
  config = function(_, opts)
    require('treesitter-context').setup(opts)

    -- Treesitter-context separator border
    vim.cmd [[hi TreesitterContextBottom gui=underline guisp=#74c7ec]]
  end
}
