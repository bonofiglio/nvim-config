return {
  autostart = true,
  capabilities = vim.tbl_deep_extend(
    "force",
    vim.lsp.protocol.make_client_capabilities(),
    require("cmp_nvim_lsp").default_capabilities(),
    -- File watching is disabled by default for neovim.
    -- See: https://github.com/neovim/neovim/pull/22405
    { workspace = { didChangeWatchedFiles = { dynamicRegistration = true } } }
  ),
  settings = {
    ["nil"] = {
      formatting = {
        command = { "nixfmt" },
      },
      nix = {
        flake = {
          autoArchive = true,
        },
      },
    },
  },
}
