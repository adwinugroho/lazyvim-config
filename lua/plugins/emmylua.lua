return {
  {
    "neovim/nvim-lspconfig",
    opts = function(_, opts)
      -- Nonaktifkan lua_ls bawaan LazyVim
      opts.servers.lua_ls = nil

      -- Tambahkan emmylua_ls
      opts.servers.emmylua_ls = {
        cmd = { "emmylua_ls" },
        filetypes = { "lua" },
        settings = {
          emmylua = {
            diagnostics = { enable = true },
            runtime = { version = "LuaJIT" },
            workspace = { checkThirdParty = false },
          },
        },
      }

      return opts
    end,
  },
}
