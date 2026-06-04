vim.pack.add {
  {
    name = 'mason.nvim',
    src = 'https://github.com/williamboman/mason.nvim',
  },
  {
    name = 'mason-tool-installer.nvim',
    src = 'https://github.com/WhoIsSethDaniel/mason-tool-installer.nvim',
  },
}

local lsps = {
  'lua-language-server',
  'ty',
  'yaml-language-server',
  'rust-analyzer',
  'typescript-language-server',
  'bash-language-server',
  'tailwindcss-language-server',
}

local formatters = {
  'prettierd',
  'stylua',
  'black',
  'darker',
  'isort',
  'terraform',
  'shfmt',
  'taplo',
}

local linters = {
  'hadolint',
  'jsonlint',
  'tflint',
  'markdownlint',
  'vale',
  'ruff',
  'shellcheck',
}

local tools = {}
vim.list_extend(tools, lsps)
vim.list_extend(tools, formatters)
vim.list_extend(tools, linters)

require('mason').setup {}
require('mason-tool-installer').setup { ensure_installed = tools }
