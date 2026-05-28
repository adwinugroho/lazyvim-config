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
      flavour = "macchiato", -- latte, frappe, macchiato, mocha
      background = {
        light = "latte",
        dark = "macchiato",
      },
      transparent_background = false,
      show_end_of_buffer = false,
      term_colors = false,
      integrations = {
        cmp = true,
        gitsigns = true,
        nvimtree = true,
        notify = false,
        mini = { enabled = false, indentscope_color = "" },
      },
    },
    config = function(_, opts)
      require("catppuccin").setup(opts)
      -- Load the colorscheme/comment if don't use
      vim.cmd.colorscheme("catppuccin")
    end,
  },
  {
    "ayu-theme/ayu-vim",
    lazy = false, -- Load immediately
    priority = 1000, -- High priority to load before other plugins
    config = function()
      -- Set the variant: 'light', 'mirage', or 'dark'
      vim.g.ayucolor = "mirage"

      -- Load the colorscheme/comment if don't use
      -- vim.cmd.colorscheme("ayu")
    end,
  },
  {
    "fugalh/desert.vim",
    lazy = false, -- Load immediately at startup
    priority = 1000, -- Load before other UI plugins
    config = function()
      -- Load the colorscheme
      -- vim.cmd.colorscheme("desert")
    end,
  },
}
