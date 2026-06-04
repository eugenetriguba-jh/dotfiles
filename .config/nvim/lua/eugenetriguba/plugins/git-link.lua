vim.pack.add {
  {
    name = 'git-link.nvim',
    src = 'https://github.com/juacker/git-link.nvim',
  },
}

vim.keymap.set('n', '<leader>gu', function() require("git-link.main").copy_line_url() end)
vim.keymap.set('n', '<leader>go', function() require("git-link.main").open_line_url() end)
vim.keymap.set('x', '<leader>gu', function() require("git-link.main").copy_line_url() end)
vim.keymap.set('x', '<leader>go', function() require("git-link.main").open_line_url() end)
