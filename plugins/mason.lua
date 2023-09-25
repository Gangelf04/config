-- customize mason plugins
return {
  -- use mason-lspconfig to configure LSP installations
  {
    "williamboman/mason-lspconfig.nvim",
    -- overrides `require("mason-lspconfig").setup(...)`
    opts = {
      ensure_installed = {
        "tsserver",
        "html",
        "cssls",
        "tailwindcss",
        "emmet_ls",
        "rust_analyzer",
        "sqlls",
        "csharp_ls",
        "pyright",
        "ruff_lsp",
        "gopls",
        "yamlls",
        "angularls",
        "prismals",
      },
    },
  },
  -- use mason-null-ls to configure Formatters/Linter installation for null-ls sources
  {
    "jay-babu/mason-null-ls.nvim",
    -- overrides `require("mason-null-ls").setup(...)`
    opts = {
      ensure_installed = {
        "prettier", -- ts/js formatter
        "stylua", -- lua formatter
        "eslint_d", -- ts/js linter
        "rustfmt",
        "sqlfmt",
        "csharpier",
        "black",
        "gomodifytags",
        "gofumpt",
        "iferr",
        "impl",
        "goimports",
        "prettierd",
      },
    },
  },
  {
    "jay-babu/mason-nvim-dap.nvim",
    -- overrides `require("mason-nvim-dap").setup(...)`
    opts = {
      ensure_installed = { "python", "delve" },
    },
  },
}
