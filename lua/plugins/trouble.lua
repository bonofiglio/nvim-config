return {
  "folke/trouble.nvim",
  opts = {},
  keys = {
    {
      "<leader>to",
      "<cmd>Trouble toggle<cr>",
      desc = "[T]rouble t[O]ggle",
    },
    {
      "<leader>tw",
      "<cmd>Trouble toggle diagnostics<cr>",
      desc = "[T]rouble [W]orkspace diagnostics",
    },
    {
      "<leader>td",
      "<cmd>Trouble toggle diagnostics filter.buf=0<cr>",
      desc = "[T]rouble [D]ocument diagnostics",
    },
    {
      "<leader>tq",
      "<cmd>Trouble toggle quickfix<cr>",
      desc = "[T]rouble [Q]uickfix",
    },
    {
      "<leader>tl",
      "<cmd>Trouble toggle loclist<cr>",
      desc = "[T]rouble [L]ocal list",
    },
    {
      "<leader>cr",
      "<cmd>Trouble lsp toggle focus=false win.position=right<cr>",
      desc = "[C]ode [R]eferences (Trouble)",
    },
  },
}
