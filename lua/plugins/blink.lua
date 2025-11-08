return {
  {
    "saghen/blink.cmp",
    event = "InsertEnter",
    opts = {
      keymap = {
        preset = "none", -- disable default preset to fully control mappings
        ["<CR>"] = { "accept", "fallback" },
        ["<Tab>"] = { "select_next", "fallback" },
        ["<S-Tab>"] = { "select_prev", "fallback" },
        ["<Down>"] = { "select_next", "fallback" },
        ["<Up>"] = { "select_prev", "fallback" },
        ["<C-e>"] = { "cancel", "fallback" },
        ["<C-Space>"] = { "show", "fallback" },
      },
    },
    config = function(_, opts)
      local blink = require("blink.cmp")
      blink.setup(opts)

      -------------------------------------------------------------------
      -- 🪄 Re-enable Blink keymaps after Visual Multi exits
      -------------------------------------------------------------------
      vim.api.nvim_create_autocmd("User", {
        pattern = "visual_multi_exit",
        callback = function()
          vim.defer_fn(function()
            blink.setup(opts)
            vim.notify("🔁 Blink keymaps restored after Visual Multi", vim.log.levels.INFO)
          end, 100)
        end,
      })

      -------------------------------------------------------------------
      -- Optional: Manual command to reopen menu
      -------------------------------------------------------------------
      vim.api.nvim_create_user_command("BlinkOpen", function()
        blink.show()
      end, {})
    end,
  },
}
