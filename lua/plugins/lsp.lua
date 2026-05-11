return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },

  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "williamboman/mason.nvim",
    },

    config = function()
      -- =========================
      -- PYTHON
      -- =========================
      vim.lsp.config("pyright", {})

      -- =========================
      -- TYPESCRIPT / REACT / RN
      -- =========================
      vim.lsp.config("ts_ls", {
        filetypes = {
          "javascript",
          "javascriptreact",
          "typescript",
          "typescriptreact",
        },

        settings = {
          typescript = {
            preferences = {
              importModuleSpecifier = "relative",
            },
          },
          javascript = {
            preferences = {
              importModuleSpecifier = "relative",
            },
          },
        },
      })

      -- =========================
      -- LUA (Neovim config)
      -- =========================
      vim.lsp.config("lua_ls", {
        settings = {
          Lua = {
            diagnostics = {
              globals = { "vim" },
            },
          },
        },
      })

      -- =========================
      -- ENABLE SERVERS
      -- =========================
      vim.lsp.enable({
        "pyright",
        "ts_ls",
        "lua_ls",
      })
    end,
  },
}
