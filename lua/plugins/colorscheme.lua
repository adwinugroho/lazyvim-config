return {
  -- 🌿 Gruvbox
  {
    "ellisonleao/gruvbox.nvim",
    priority = 1000,
    config = function()
      require("gruvbox").setup({
        contrast = "soft",
      })
    end,
  },

  -- 🐈 Catppuccin
  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = false, -- priority load
    priority = 1000, -- load first
    opts = {
      flavour = "auto", -- latte, frappe, macchiato, mocha
      background = {
        light = "latte",
        dark = "mocha",
      },
      transparent_background = false,
      show_end_of_buffer = false,
      term_colors = false,
      integrations = {
        cmp = true,
        gitsigns = true,
        nvimtree = true,
        notify = false,
        mini = { enabled = true, indentscope_color = "" },
      },
    },
    config = function(_, opts)
      require("catppuccin").setup(opts)

      -- baru set colorscheme di sini
      vim.cmd.colorscheme("catppuccin")
    end,
  },
}
