return {
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    config = function()
      require("toggleterm").setup({
        size = 15,
        open_mapping = [[<leader>tt]],
        shade_terminals = true,
        direction = "horizontal",
        start_in_insert = true,
        insert_mappings = true,
        terminal_mappings = true,
      })

      -- ESC untuk keluar dari mode terminal
      function _G.set_terminal_keymaps()
        local opts = { buffer = 0 }
        vim.keymap.set("t", "<Esc>", [[<C-\><C-n>]], opts)
      end

      vim.cmd("autocmd! TermOpen term://* lua set_terminal_keymaps()")
    end,
  },
}
