---@type LazyPluginSpec
return {
  "stevearc/oil.nvim",
  ---@module 'oil'
  ---@type oil.SetupOpts
  opts = {
    default_file_explorer = true,
    delete_to_trash = true,
    -- See :help oil-actions for a list of all available actions
    keymaps = {
      ["<leader>o"] = { mode = "n", "actions.open_cwd", opts = { vertical = true, desc = "Open [O]il file explorer" } },
      ["<C-h>"] = false,
      ["<C-l>"] = false,
    },
  },
  -- Lazy loading is not recommended because it is very tricky to make it work correctly in all situations.
  lazy = false,
  config = function(_, opts)
    local oil = require("oil")
    oil.setup(opts)

    vim.keymap.set("n", "<leader>o", function()
      oil.open()
    end, { desc = "Open [O]il file explorer" })
  end,
}
