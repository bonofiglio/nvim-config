return {
  "ThePrimeagen/harpoon",
  branch = "harpoon2",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    local harpoon = require('harpoon')
    harpoon:setup()

    local list = harpoon:list()

    vim.keymap.set('n', '<leader>ha', function() list:add() end, { silent = true, desc = '[H]arpoon [A]dd file' })

    vim.keymap.set('n', '<leader>ho', function()
      harpoon.ui:toggle_quick_menu(list)
    end, { desc = '[H]arpoon [O]pen', silent = true })

    vim.keymap.set('n', '<C-7>', function()
      list:select(1)
    end, { desc = 'Go to first file in Harpoon', silent = true })

    vim.keymap.set('n', '<C-8>', function()
      list:select(2)
    end, { desc = 'Go to second file in Harpoon', silent = true })

    vim.keymap.set('n', '<C-9>', function()
      list:select(3)
    end, { desc = 'Go to third file in Harpoon', silent = true })

    vim.keymap.set('n', '<C-0>', function()
      list:select(4)
    end, { desc = 'Go to fourth file in Harpoon', silent = true })
  end
}
