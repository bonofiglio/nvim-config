return {
  -- Disable formatting from ts_ls
  capabilities = require("cmp_nvim_lsp").default_capabilities({ document_formatting = false }),
  root_markers = { "deno.json", "deno.jsonc" },
}
