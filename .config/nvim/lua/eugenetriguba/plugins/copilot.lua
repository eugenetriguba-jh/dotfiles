
vim.pack.add {
  {
    name = 'CopilotChat',
    src = 'https://github.com/CopilotC-Nvim/CopilotChat.nvim',
  },
  {
    name = 'plenary',
    src = 'https://github.com/nvim-lua/plenary.nvim',

  }
}

require('CopilotChat').setup({
  model = 'claude-sonnet-4.5',
  trusted_tools = nil,
  window = {
    layout = 'vertical',
    width = 0.4,
  },
})

vim.keymap.set('n', '<leader>tc', '<CMD>CopilotChat<CR>', { desc = 'Open Copilot Chat' })
