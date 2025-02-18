-- See `:help vim.keymap.set()`

-- LSP
vim.keymap.set("n", "gd", vim.lsp.buf.definition, { silent = true, desc = "Go to definition" })
vim.keymap.set("n", "gd", vim.lsp.buf.definition, { silent = true, desc = "[G]o to [D]efinition" })
vim.keymap.set("n", "gD", vim.lsp.buf.declaration, { silent = true, desc = "[G]o to [D]eclaration" })
vim.keymap.set("n", "K", vim.lsp.buf.hover, { silent = true, desc = "Show information about symbol under cursor" })
vim.keymap.set(
  "n",
  "<leader>vws",
  vim.lsp.buf.workspace_symbol,
  { silent = true, desc = "Search workspace for symbol" }
)
vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "[C]ode [A]ctions under cursor" })
vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { silent = true, desc = "[R]e[N]ame symbol under cursor" })
vim.keymap.set("n", "<C-h>", vim.lsp.buf.signature_help, { silent = true, desc = "Show signature help" })
vim.keymap.set("n", "<leader>va", vim.lsp.buf.format, { silent = true, desc = "Format current file" })

-- Diagnostics
vim.keymap.set("n", "[d", vim.diagnostic.goto_next, { silent = true, desc = "Next diagnostic" })
vim.keymap.set("n", "]d", vim.diagnostic.goto_prev, { silent = true, desc = "Previous diagnostic" })
vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, { silent = true, desc = "Show diagnostics under cursor" })
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })

-- Misc
vim.keymap.set({ "n", "v" }, "<leader>sc", "<CMD>noh<CR>", { silent = true, desc = "[S]earch highlights [C]lear" })
vim.keymap.set(
  "n",
  "<leader>re",
  ":%s/<C-r><C-w>/<C-r><C-w>/gI<Left><Left><Left>",
  { desc = "[R][E]place all instances of word under cursor in file" }
)

-- Cleaner movement
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move selected lines down", silent = true })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move selected lines up", silent = true })
vim.keymap.set("n", "J", "mzJ`z", { desc = "Append line below into current line", silent = true })
vim.keymap.set("n", "n", "nzzzv", { desc = "Next search result and center the screen", silent = true })
vim.keymap.set("n", "N", "Nzzzv", { desc = "Previous search result and center the screen", silent = true })
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Scroll down and center the screen", silent = true })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Scroll up and center the screen", silent = true })

-- Yanking shenanigans
vim.keymap.set("x", "<leader>p", '"_dP', { desc = "Paste without overwriting register", silent = true })
vim.keymap.set({ "x", "n" }, "<leader>y", '"+y', { desc = "Yank to system clipboard", silent = true })
vim.keymap.set("n", "<leader>Y", '"+Y', { desc = "Yank current line to system clipboard", silent = true })
vim.keymap.set({ "n", "v" }, "<leader>d", '"_d', { desc = "Delete without overwriting register", silent = true })

-- Sue me
vim.keymap.set("i", "<C-c>", "<Esc>", { silent = true, desc = "Escape insert mode" })
vim.keymap.set("n", "Q", "<nop>")

-- Buffer movement
vim.keymap.set("n", "<leader>f", "<cmd> bp <CR>", { desc = "Go to previous buffer", silent = true })
vim.keymap.set("n", "<leader>j", "<cmd> bn <CR>", { desc = "Go to next buffer", silent = true })
vim.keymap.set("n", "<leader>x", "<cmd> bd <CR>", { desc = "Close current buffer", silent = true })

-- Comfy saving with formatting
vim.keymap.set("n", "<leader>w", function()
  vim.lsp.buf.format()
  vim.cmd("write")
end, { desc = "Format and save file", silent = true })

-- Not my finest work, but it allows <c-m> to be mapped to a different action than <cr>
vim.keymap.set("i", "<cr>", "<cr>")

-- Easier terminal mode exit
vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })
