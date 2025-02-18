-- Enable the lua loader (Free performance)
vim.loader.enable()

-- Set <space> as the leader key
-- See `:help mapleader`
--  NOTE: Must happen before plugins are loaded (otherwise wrong leader will be used)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Set to true if you have a Nerd Font installed and selected in the terminal
vim.g.have_nerd_font = true

-- Get rid of the terrible default sql maps
vim.g.omni_sql_no_default_maps = 1

-- [[ Setting options ]]
-- See `:help vim.opt`

vim.o.termguicolors = true

vim.opt.tabstop = 4

-- Make line numbers default
vim.opt.number = true
vim.opt.relativenumber = true

-- Indentation
vim.opt.expandtab = true -- Use the appropriate number of spaces to insert a <Tab>
vim.opt.smartindent = true -- Do smart autoindenting when starting a new line

-- Save undo history
vim.opt.undofile = true
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"

-- Search
vim.opt.hls = true -- When there is a previous search pattern, highlight all its matches
vim.opt.is = true -- While typing a search command, show where the pattern, as it was typed so far, matches

-- Scrolling
vim.opt.scrolloff = 8 -- Minimal number of screen lines to keep above and below the cursor

-- Misc
vim.opt.updatetime = 50 -- Faster updates, happier me
vim.opt.colorcolumn = "80" -- Gotta keep that punched card compatibility. You never know
vim.opt.foldlevel = 99 -- Don't fold by default
vim.opt.mouse = "a" -- Enable mouse mode, can be useful for resizing splits for example!
vim.opt.showmode = false -- Don't show the mode, since it's already in the status line
vim.opt.breakindent = true -- Enable break indent
vim.opt.signcolumn = "yes" -- Keep signcolumn on by default
vim.opt.timeoutlen = 300 -- Decrease mapped sequence wait time
vim.opt.cursorline = true -- Show which line your cursor is on

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Configure how new splits should be opened
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Sets how neovim will display certain whitespace characters in the editor.
--  See `:help 'list'`
--  and `:help 'listchars'`
vim.opt.list = true
vim.opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }
