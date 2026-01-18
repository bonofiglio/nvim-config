vim.g.rustaceanvim = {
  tools = {
    test_executor = "background",
  },
  server = {
    default_settings = {
      ["rust-analyzer"] = {
        files = {
          excludeDirs = {
            -- Avoid incredibly long scans when using direnv
            ".direnv",
          },
        },
      },
    },
  },
}

return {
  "mrcjkb/rustaceanvim",
  version = "^5", -- Recommended
  lazy = false,   -- This plugin is already lazy
}
